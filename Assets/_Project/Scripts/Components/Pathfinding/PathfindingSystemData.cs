using Unity.Entities;

namespace Components.Pathfinding
{
    public struct PathfindingSystemData : IComponentData
    {
        public int SeekersCount;
        public int RequestedPathsCount;
        public int InProgressPathsCount;

        public bool SkipNewRequests;
    }
}