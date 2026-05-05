using Gameplay.StateMachine.States.Core;
using Gameplay.Systems;
using Gameplay.Systems.Audio;
using Gameplay.Systems.Groups;
using Gameplay.Systems.PhysicsAdditions;
using Infrastructure.Services.Log.Core;
using Infrastructure.StateMachine.Main.Core;
using Infrastructure.StateMachine.Main.States.Core;
using Systems.Physics;
using Unity.Entities;
using VContainer;
using AgentInitializationSystem = Systems.Pathfinding.AgentInitializationSystem;
using DestinationChangeAutoRequestSystem = Systems.Pathfinding.AutoRequest.DestinationChangeAutoRequestSystem;
using FixedTickCountSystem = Systems.FixedTickCountSystem;
using NavMeshBakeSystem = Systems.Pathfinding.NavMeshBakeSystem;
using NavMeshObstacleSystem = Systems.Pathfinding.NavMeshObstacleSystem;
using PathDynamicIntervalAutoRequestSystem = Systems.Pathfinding.AutoRequest.PathDynamicIntervalAutoRequestSystem;
#pragma warning disable CS0618 // Type or member is obsolete
using PathfindingSystem = Systems.Pathfinding.PathfindingSystem;
#pragma warning restore CS0618 // Type or member is obsolete
using PathIntervalAutoRequestSystem = Systems.Pathfinding.AutoRequest.PathIntervalAutoRequestSystem;
using PathRigidbodyMoverSystem = Systems.Pathfinding.Movers.PathRigidbodyMoverSystem;
using PathTransformMoveSystem = Systems.Pathfinding.Movers.PathTransformMoveSystem;
using RadiusModifierSystem = Systems.Pathfinding.Modifiers.RadiusModifierSystem;
using SmoothModifierSystem = Systems.Pathfinding.Modifiers.SmoothModifierSystem;
using TickCountSystem = Systems.TickCountSystem;

namespace Gameplay.StateMachine.States
{
    public class CreateSystemsState : IGameplayState, IState
    {
        private readonly IStateMachine<IGameplayState> _gameplayStateMachine;
        private readonly ILogService _logService;
        private readonly IObjectResolver _objectResolver;

        public CreateSystemsState(IStateMachine<IGameplayState> gameplayStateMachine, ILogService logService, IObjectResolver objectResolver)
        {
            _gameplayStateMachine = gameplayStateMachine;
            _logService = logService;
            _objectResolver = objectResolver;
        }

        public void Enter()
        {
            _logService.Log("Gameplay.CreateSystemsState.Enter");

            CreateSystemGroups();
            CreateSystems();

            _gameplayStateMachine.Enter<FinalizeLoadingState>();
        }

        private void CreateSystemGroups()
        {
            CreateSystemManaged<EarlyUpdateSystemGroup, InitializationSystemGroup>().Enabled = false;
            CreateSystemManaged<FixedUpdateSystemGroup, FixedStepSimulationSystemGroup>().Enabled = false;
            CreateSystemManaged<UpdateSystemGroup, SimulationSystemGroup>().Enabled = false;
        }

        private void CreateSystems()
        {
            CreateEarlyUpdateSystems();
            CreateFixedUpdateSystems();
            CreateUpdateSystems();
        }

        private void CreateEarlyUpdateSystems()
        {
            CreateSystem<TickCountSystem, EarlyUpdateSystemGroup>();
            CreateSystem<RandomInitializationSystem, EarlyUpdateSystemGroup>();
            CreateSystem<AgentInitializationSystem, EarlyUpdateSystemGroup>();
            CreateSystem<RigidbodyConstraintsInitializationSystem, EarlyUpdateSystemGroup>();
        }

        private void CreateFixedUpdateSystems()
        {
            CreateSystem<FixedTickCountSystem, FixedUpdateSystemGroup>();
            CreateSystem<RigidbodyConstraintsSystem, FixedUpdateSystemGroup>();
            CreateSystem<PathRigidbodyMoverSystem, FixedUpdateSystemGroup>();
        }

        private void CreateUpdateSystems()
        {
            CreateSystemManaged<PrefabLibrarySystem, UpdateSystemGroup>();
            CreatePathfindingSystems();
            CreateAudioSystems();
            CreateUISystems();
        }

        private void CreatePathfindingSystems()
        {
            CreateSystemManaged<NavMeshBakeSystem, UpdateSystemGroup>();
            CreateSystemManaged<NavMeshObstacleSystem, UpdateSystemGroup>();
            CreateSystem<PathIntervalAutoRequestSystem, UpdateSystemGroup>();
            CreateSystem<PathDynamicIntervalAutoRequestSystem, UpdateSystemGroup>();
            CreateSystem<DestinationChangeAutoRequestSystem, UpdateSystemGroup>();
#pragma warning disable CS0618 // Type or member is obsolete
            CreateSystem<PathfindingSystem, UpdateSystemGroup>();
#pragma warning restore CS0618 // Type or member is obsolete
            CreateSystem<RadiusModifierSystem, UpdateSystemGroup>();
            CreateSystem<SmoothModifierSystem, UpdateSystemGroup>();
            CreateSystem<PathTransformMoveSystem, UpdateSystemGroup>();
        }

        private void CreateAudioSystems()
        {
            CreateSystemManaged<AudioSourceSystem, UpdateSystemGroup>();

            //also systems that plays audio
        }

        private void CreateUISystems()
        {
            //managed systems that updates UI inside world tick timing
        }

        private void CreateSystem<T, TGroup>() where T : unmanaged, ISystem where TGroup : ComponentSystemGroup
        {
            World world = World.DefaultGameObjectInjectionWorld;
            SystemHandle system = world.CreateSystem<T>();

            TGroup systemGroup = world.GetExistingSystemManaged<TGroup>();
            systemGroup.AddSystemToUpdateList(system);
        }

        private T CreateSystemManaged<T, TGroup>() where T : ComponentSystemBase, new() where TGroup : ComponentSystemGroup
        {
            World world = World.DefaultGameObjectInjectionWorld;
            T system = world.CreateSystemManaged<T>();

            _objectResolver.Inject(system);

            TGroup systemGroup = world.GetExistingSystemManaged<TGroup>();
            systemGroup.AddSystemToUpdateList(system);

            return system;
        }
    }
}