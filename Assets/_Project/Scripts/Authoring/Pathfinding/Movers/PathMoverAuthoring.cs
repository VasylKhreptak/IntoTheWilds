using UnityEngine;

namespace Authoring.Pathfinding.Movers
{
    [DisallowMultipleComponent]
    [RequireComponent(typeof(AgentAuthoring))]
    public abstract class PathMoverAuthoring : MonoBehaviour { }
}