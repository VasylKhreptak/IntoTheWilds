using Gameplay.Components;
using Unity.Burst;
using Unity.Entities;
using Unity.Mathematics;
using Random = Unity.Mathematics.Random;

namespace Gameplay.Systems
{
    [DisableAutoCreation]
    public partial struct RandomInitializationSystem : ISystem
    {
        [BurstCompile]
        public void OnUpdate(ref SystemState state)
        {
            InitializeJob job = new InitializeJob
            {
                ElapsedTime = state.WorldUnmanaged.Time.ElapsedTime
            };

            state.Dependency = job.ScheduleParallel(state.Dependency);
        }

        [BurstCompile]
        public partial struct InitializeJob : IJobEntity
        {
            public double ElapsedTime;

            public void Execute([EntityIndexInQuery] int sortKey, ref RandomComponent randomComponent,
                EnabledRefRW<RandomNeedsInitializationFlag> needsInitializationFlag)
            {
                uint seed = math.hash(new uint2((uint)sortKey, (uint)(ElapsedTime * 1000))) + 1u;

                randomComponent.Value = new Random(seed);
                needsInitializationFlag.ValueRW = false;
            }
        }
    }
}