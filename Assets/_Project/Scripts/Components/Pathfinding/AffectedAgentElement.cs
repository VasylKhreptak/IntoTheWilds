using Unity.Entities;

namespace Components.Pathfinding
{
    [InternalBufferCapacity(32)]
    public struct AffectedAgentElement : IBufferElementData
    {
        public int ID;
    }
}