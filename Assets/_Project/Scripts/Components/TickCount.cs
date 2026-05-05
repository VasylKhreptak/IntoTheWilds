using Unity.Entities;

namespace Components
{
    public struct TickCount : IComponentData
    {
        public long Value;
    }
}