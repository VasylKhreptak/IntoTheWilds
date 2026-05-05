using Authoring.Physics;
using Unity.Burst;
using Unity.Entities;
using Unity.Transforms;

namespace Systems.Physics
{
    [DisableAutoCreation]
    public partial struct RigidbodyConstraintsInitializationSystem : ISystem
    {
        [BurstCompile]
        public void OnUpdate(ref SystemState state)
        {
            InitializeJob job = new InitializeJob();

            state.Dependency = job.ScheduleParallel(state.Dependency);
        }

        [BurstCompile]
        public partial struct InitializeJob : IJobEntity
        {
            public void Execute(in LocalToWorld localToWorld, ref RigidbodyConstraints constraints,
                EnabledRefRW<RigidbodyConstraintsNeedsInitializationFlag> needsInitializationFlag)
            {
                constraints.InitialPosition = localToWorld.Position;
                constraints.InitialRotation = localToWorld.Rotation;
                needsInitializationFlag.ValueRW = false;
            }
        }
    }
}