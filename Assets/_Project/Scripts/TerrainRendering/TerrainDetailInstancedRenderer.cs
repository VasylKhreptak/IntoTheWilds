using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using Cysharp.Threading.Tasks;
using GPUInstancerPro;
using Infrastructure.Optimization;
using Infrastructure.Services.FixedTickable.Core;
using Infrastructure.Services.LateTickable.Core;
using Infrastructure.Services.Tickable.Core;
using Infrastructure.Tools;
using Sirenix.OdinInspector;
using UnityEngine;
using VContainer;

namespace TerrainRendering
{
    [DisallowMultipleComponent]
    [RequireComponent(typeof(Terrain))]
    public class TerrainDetailInstancedRenderer : CachedMonoBehaviour, ILateTickable
    {
        private const string StreamingFolderName = "TerrainDetailStreamingData";

        [Inject]
        public new void Construct(ITickableService tickableService, IFixedTickableService fixedTickableService, ILateTickableService lateTickableService)
        {
            base.Construct(tickableService, fixedTickableService, lateTickableService);
        }

        [Header("References")]
        [SerializeField, ReadOnly] private Terrain _terrain;

        [Header("Preferences")]
        [SerializeField, ReadOnly] private string _localFilePath;
        [SerializeField] private float _terrainDetailDataLoadDistance = 1536f;
        [SerializeField] private float _patchRenderDistance = 200f;
        [SerializeField] private GPUIProfile _profile;
        [SerializeField] private bool _alignToSurface = true;
        [SerializeField] private Dictionary<GameObject, GameObject> _detailOverrides;

        private readonly AutoResetCancellationTokenSource _cts = new AutoResetCancellationTokenSource();

        [ShowInInspector, ReadOnly] private bool _isLoadingTerrainDetailData;
        [ShowInInspector, ReadOnly] private bool _loadedTerrainDetailData;
        [ShowInInspector, ReadOnly] private TerrainDetailData _terrainDetailData;
        [ShowInInspector, ReadOnly] private Vector3 _terrainWorldCenter;
        [ShowInInspector, ReadOnly] private List<RenderSource> _renderSources = new List<RenderSource>();

        private GameObject[] _detailPrefabs;

        #region MonoBehaviour

        private void OnValidate() => _terrain = GetComponent<Terrain>();

        protected override void Awake()
        {
            base.Awake();

            _terrain.drawTreesAndFoliage = false;
            _terrainWorldCenter = _terrain.terrainData.bounds.center + _terrain.transform.position;

            FetchDetailPrefabs();
            ApplyDetailOverrides();
            CreateRenderSources();
        }

        public void LateTick()
        {
            Camera cam = Camera.main;

            if (cam == null)
                return;

            Vector3 cameraPosition = cam.transform.position;

            HandleTerrainDetailDataState(cameraPosition);
            HandleRendering(cameraPosition);
        }

        protected override void OnDisable()
        {
            base.OnDisable();

            StopLoadingAndDisposeTerrainDetailData();
        }

        #endregion

        private void FetchDetailPrefabs() => _detailPrefabs = _terrain.terrainData.detailPrototypes.Select(x => x.prototype).ToArray();

        private void ApplyDetailOverrides()
        {
            for (int i = 0; i < _detailPrefabs.Length; i++)
            {
                if (_detailOverrides.ContainsKey(_detailPrefabs[i]))
                    _detailPrefabs[i] = _detailOverrides[_detailPrefabs[i]];
            }
        }

        private void CreateRenderSources()
        {
            GameObject renderSourceContainer = new GameObject("RenderSources");
            renderSourceContainer.transform.SetParent(transform);
            renderSourceContainer.transform.localPosition = Vector3.zero;
            renderSourceContainer.transform.localRotation = Quaternion.identity;
            renderSourceContainer.transform.localScale = Vector3.one;

            TerrainData terrainData = _terrain.terrainData;

            int patchCountX = terrainData.detailWidth / terrainData.detailResolutionPerPatch;

            int renderSourceCount = patchCountX * patchCountX;

            _renderSources.Capacity = renderSourceCount;

            for (int i = 0; i < renderSourceCount; i++)
                _renderSources.Add(renderSourceContainer.AddComponent<RenderSource>());
        }

        private void HandleTerrainDetailDataState(Vector3 cameraPosition)
        {
            float distanceToCamera = Vector3.Distance(cameraPosition, _terrainWorldCenter);

            if (distanceToCamera < _terrainDetailDataLoadDistance)
                StartLoadingTerrainDetailData();
            else
                StopLoadingAndDisposeTerrainDetailData();
        }

        private void HandleRendering(Vector3 cameraPosition)
        {
            if (_loadedTerrainDetailData == false || _terrainDetailData == null)
                return;

            foreach (DetailPatch detailPatch in _terrainDetailData.Patches)
            {
                float distanceFromCameraToDetailPatch = Vector3.Distance(cameraPosition, detailPatch.Center);

                foreach (DetailInfo detailInfo in detailPatch.Details)
                {
                    if (distanceFromCameraToDetailPatch < _patchRenderDistance)
                    {
                        if (detailInfo.RenderKey == 0)
                        {
                            if (GPUICoreAPI.RegisterRenderer(detailPatch.RenderSource, _detailPrefabs[detailInfo.PrefabIndex], _profile, out detailInfo.RenderKey))
                            {
                                GPUICoreAPI.SetTransformBufferData(detailInfo.RenderKey, detailInfo.Matrices);
                            }
                        }
                    }
                    else
                    {
                        if (detailInfo.RenderKey != 0)
                        {
                            GPUICoreAPI.DisposeRenderer(detailInfo.RenderKey);
                            detailInfo.RenderKey = 0;
                        }
                    }
                }
            }
        }

        private void StartLoadingTerrainDetailData()
        {
            if (_isLoadingTerrainDetailData || _loadedTerrainDetailData)
                return;

            _isLoadingTerrainDetailData = true;

            LoadDetailDataFromFile(_cts.Token)
                .ContinueWith(() =>
                {
                    _isLoadingTerrainDetailData = false;
                    _loadedTerrainDetailData = true;
                })
                .Forget();
        }

        private void StopLoadingAndDisposeTerrainDetailData()
        {
            if (_loadedTerrainDetailData == false)
                return;

            _cts.Cancel();

            if (_terrainDetailData != null)
            {
                foreach (DetailPatch detailPatch in _terrainDetailData.Patches)
                {
                    foreach (DetailInfo detailInfo in detailPatch.Details)
                    {
                        if (detailInfo.RenderKey != 0)
                            GPUICoreAPI.DisposeRenderer(detailInfo.RenderKey);
                    }
                }
            }

            _terrainDetailData = null;
            _isLoadingTerrainDetailData = false;
            _loadedTerrainDetailData = false;
        }

        private TerrainDetailData GetDetailData()
        {
            TerrainDetailData terrainDetailData = new TerrainDetailData();

            TerrainData terrainData = _terrain.terrainData;

            int patchCountX = terrainData.detailWidth / terrainData.detailResolutionPerPatch;
            int patchCountY = terrainData.detailHeight / terrainData.detailResolutionPerPatch;

            for (int patchX = 0; patchX < patchCountX; patchX++)
            {
                for (int patchY = 0; patchY < patchCountY; patchY++)
                {
                    DetailPatch detailPatch = new DetailPatch();

                    float patchSizeX = terrainData.size.x / patchCountX;
                    float patchSizeZ = terrainData.size.z / patchCountY;

                    float centerX = _terrain.transform.position.x + (patchX + 0.5f) * patchSizeX;
                    float centerZ = _terrain.transform.position.z + (patchY + 0.5f) * patchSizeZ;

                    float centerY = _terrain.SampleHeight(new Vector3(centerX, 0f, centerZ)) + _terrain.transform.position.y;

                    detailPatch.Center = new Vector3(centerX, centerY, centerZ);

                    terrainDetailData.Patches.Add(detailPatch);

                    for (int detailIndex = 0; detailIndex < terrainData.detailPrototypes.Length; detailIndex++)
                    {
                        DetailInfo detailInfo = new DetailInfo();

                        detailPatch.Details.Add(detailInfo);

                        detailInfo.PrefabIndex = detailIndex;

                        DetailInstanceTransform[] instances =
                            terrainData.ComputeDetailInstanceTransforms(patchX, patchY, detailIndex, _terrain.detailObjectDensity, out Bounds _);

                        detailInfo.Matrices = new Matrix4x4[instances.Length];

                        for (int index = 0; index < instances.Length; index++)
                        {
                            DetailInstanceTransform instance = instances[index];

                            Vector3 position = new Vector3(instance.posX + _terrain.transform.position.x,
                                instance.posY + _terrain.transform.position.y,
                                instance.posZ + _terrain.transform.position.z);

                            Quaternion rotation;

                            if (_alignToSurface)
                            {
                                Vector3 terrainPos = _terrain.transform.position;

                                float normalizedX = (position.x - terrainPos.x) / terrainData.size.x;
                                float normalizedZ = (position.z - terrainPos.z) / terrainData.size.z;

                                normalizedX = Mathf.Clamp01(normalizedX);
                                normalizedZ = Mathf.Clamp01(normalizedZ);

                                Vector3 normal = terrainData.GetInterpolatedNormal(normalizedX, normalizedZ);

                                Quaternion yRotation = Quaternion.AngleAxis(instance.rotationY * Mathf.Rad2Deg, Vector3.up);

                                Quaternion alignRotation = Quaternion.FromToRotation(Vector3.up, normal);

                                rotation = alignRotation * yRotation;
                            }
                            else
                            {
                                rotation = Quaternion.AngleAxis(instance.rotationY * Mathf.Rad2Deg, Vector3.up);
                            }

                            Vector3 scale = new Vector3(instance.scaleXZ, instance.scaleY, instance.scaleXZ);

                            Matrix4x4 matrix = Matrix4x4.TRS(position, rotation, scale);

                            detailInfo.Matrices[index] = matrix;
                        }
                    }
                }
            }

            return terrainDetailData;
        }

        [Button]
        private void SaveDetailDataToFile()
        {
            DestroyDetailDataFile();

            TerrainDetailData detailData = GetDetailData();

            _localFilePath = Path.Combine(StreamingFolderName, $"TerrainDetailData_{_terrain.terrainData.GetInstanceID()}.asset");

            string fullPath = Path.Combine(Application.streamingAssetsPath, _localFilePath);

            Directory.CreateDirectory(Path.GetDirectoryName(fullPath));

            using BinaryWriter writer = new BinaryWriter(File.Open(fullPath, FileMode.Create));

            writer.Write(detailData.Patches.Count);

            foreach (var patch in detailData.Patches)
            {
                writer.Write(patch.Center.x);
                writer.Write(patch.Center.y);
                writer.Write(patch.Center.z);

                writer.Write(patch.Details.Count);

                foreach (var detail in patch.Details)
                {
                    writer.Write(detail.PrefabIndex);
                    writer.Write(detail.RenderKey);

                    writer.Write(detail.Matrices.Length);
                    foreach (var matrix in detail.Matrices)
                    {
                        for (int i = 0; i < 16; i++)
                        {
                            writer.Write(matrix[i]);
                        }
                    }
                }
            }
        }

        [Button]
        private void DestroyDetailDataFile()
        {
            string fullPath = Path.Combine(Application.streamingAssetsPath, _localFilePath);

            if (File.Exists(fullPath))
                File.Delete(fullPath);
        }

        [Button]
        private async UniTask LoadDetailDataFromFile(CancellationToken token)
        {
            string fullPath = Path.Combine(Application.streamingAssetsPath, _localFilePath);

            if (File.Exists(fullPath) == false)
            {
                Debug.LogError($"File not found: {fullPath}");
                return;
            }

            await UniTask.SwitchToThreadPool();

            token.ThrowIfCancellationRequested();

            TerrainDetailData data = new TerrainDetailData();

            using BinaryReader reader = new BinaryReader(File.Open(fullPath, FileMode.Open));

            int patchCount = reader.ReadInt32();

            for (int p = 0; p < patchCount; p++)
            {
                token.ThrowIfCancellationRequested();

                DetailPatch patch = new DetailPatch();

                patch.Center = new Vector3(reader.ReadSingle(), reader.ReadSingle(), reader.ReadSingle());

                int detailCount = reader.ReadInt32();

                for (int d = 0; d < detailCount; d++)
                {
                    token.ThrowIfCancellationRequested();

                    DetailInfo detail = new DetailInfo();

                    detail.PrefabIndex = reader.ReadInt32();
                    detail.RenderKey = reader.ReadInt32();

                    int matrixCount = reader.ReadInt32();
                    detail.Matrices = new Matrix4x4[matrixCount];

                    for (int m = 0; m < matrixCount; m++)
                    {
                        token.ThrowIfCancellationRequested();

                        Matrix4x4 matrix = new Matrix4x4();

                        for (int i = 0; i < 16; i++)
                        {
                            matrix[i] = reader.ReadSingle();
                        }

                        detail.Matrices[m] = matrix;
                    }

                    patch.Details.Add(detail);
                }

                data.Patches.Add(patch);
            }

            await UniTask.SwitchToMainThread();

            token.ThrowIfCancellationRequested();

            for (int i = 0; i < data.Patches.Count; i++)
            {
                DetailPatch patch = data.Patches[i];
                patch.RenderSource = _renderSources[i];
            }

            _terrainDetailData = data;
        }

        [Serializable]
        private class TerrainDetailData
        {
            public List<DetailPatch> Patches = new List<DetailPatch>();
        }

        [Serializable]
        private class DetailPatch
        {
            public Vector3 Center;
            public RenderSource RenderSource;
            public List<DetailInfo> Details = new List<DetailInfo>();
        }

        [Serializable]
        private class DetailInfo
        {
            public int PrefabIndex;
            public int RenderKey;
            public Matrix4x4[] Matrices;
        }
    }
}