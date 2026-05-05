using Unity.Entities;
using Unity.Mathematics;
using UnityEngine;

namespace Authoring.Physics
{
    [RequireComponent(typeof(Rigidbody))]
    public class RigidbodyConstraintsAuthoring : MonoBehaviour
    {
        [SerializeField] private bool3 _position;
        [SerializeField] private bool3 _rotation;

        private class Baker : Baker<RigidbodyConstraintsAuthoring>
        {
            public override void Bake(RigidbodyConstraintsAuthoring authoring)
            {
                Entity entity = GetEntity(TransformUsageFlags.Dynamic);

                RigidbodyConstraints constraints = new RigidbodyConstraints
                {
                    Position = authoring._position,
                    Rotation = authoring._rotation
                };

                AddComponent(entity, constraints);
                AddComponent<RigidbodyConstraintsNeedsInitializationFlag>(entity);
            }
        }
    }

    public struct RigidbodyConstraints : IComponentData
    {
        public bool3 Position;
        public bool3 Rotation;

        public float3 InitialPosition;
        public quaternion InitialRotation;
    }

    public struct RigidbodyConstraintsNeedsInitializationFlag : IComponentData, IEnableableComponent { }
}