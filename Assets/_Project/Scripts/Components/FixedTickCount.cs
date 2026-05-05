using Unity.Entities;

namespace Components
{
    public struct FixedTickCount : IComponentData
    {
        public long Value;
    }
}