using Unity.Entities;

namespace Components.Pathfinding
{
    public struct NavMeshBakeSystemData : IComponentData
    {
        public bool IsUpdatingNavMeshData;
    }
}