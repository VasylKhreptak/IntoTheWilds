using Plugins.Extensions;
using Sirenix.OdinInspector;
using UnityEngine;

namespace Tools
{
    [RequireComponent(typeof(Terrain))]
    public class TerrainTools : SerializedMonoBehaviour
    {
        [Header("References")]
        [SerializeField, ReadOnly] private Terrain _terrain;

        [Header("Preferences")]
        [SerializeField] private bool _alignToSurface = true;

        #region MonoBehaviour

        private void OnValidate() => _terrain = GetComponent<Terrain>();

        #endregion

        [Button]
        private void ConvertAllToGameObjects()
        {
            ClearAllObjects();
            ConvertTreesToGameObjects();
            ConvertDetailsToGameObjects();
        }

        [Button]
        private void ClearAllObjects()
        {
            foreach (Transform child in transform.GetChildren())
                DestroyImmediate(child.gameObject);
        }

        private void ConvertTreesToGameObjects()
        {
            TerrainData terrainData = _terrain.terrainData;

            for (int i = 0; i < _terrain.terrainData.treeInstances.Length; i++)
            {
                TreeInstance treeInstance = _terrain.terrainData.treeInstances[i];
                TreePrototype treePrototype = terrainData.treePrototypes[treeInstance.prototypeIndex];

                GameObject prefab = treePrototype.prefab;

                if (prefab == null)
                    continue;

                Vector3 position = Vector3.Scale(treeInstance.position, terrainData.size) + _terrain.transform.position;
                Quaternion rotation = Quaternion.Euler(0f, treeInstance.rotation * Mathf.Rad2Deg, 0f);
                GameObject treeGameObject = Instantiate(prefab, position, rotation, _terrain.transform);
                treeGameObject.transform.localScale =
                    Vector3.Scale(new Vector3(treeInstance.widthScale, treeInstance.heightScale, treeInstance.widthScale), prefab.transform.localScale);
            }
        }

        private void ConvertDetailsToGameObjects()
        {
            TerrainData terrainData = _terrain.terrainData;

            int patchCountX = terrainData.detailWidth / terrainData.detailResolutionPerPatch;
            int patchCountY = terrainData.detailHeight / terrainData.detailResolutionPerPatch;

            for (int i = 0; i < terrainData.detailPrototypes.Length; i++)
            {
                DetailPrototype detailPrototype = terrainData.detailPrototypes[i];

                for (int patchX = 0; patchX < patchCountX; patchX++)
                {
                    for (int patchY = 0; patchY < patchCountY; patchY++)
                    {
                        DetailInstanceTransform[] instances =
                            terrainData.ComputeDetailInstanceTransforms(patchX, patchY, i, _terrain.detailObjectDensity, out Bounds _);

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

                            Vector3 localScale = new Vector3(instance.scaleXZ, instance.scaleY, instance.scaleXZ);

                            GameObject detailInstance = Instantiate(detailPrototype.prototype, position, rotation, transform);

                            detailInstance.transform.localScale = localScale;
                        }
                    }
                }
            }
        }
    }
}