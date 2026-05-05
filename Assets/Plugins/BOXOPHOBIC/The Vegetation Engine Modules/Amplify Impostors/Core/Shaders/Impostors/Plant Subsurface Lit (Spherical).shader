// Made with Amplify Shader Editor v1.9.2.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Impostors/Plant Subsurface Lit (Spherical)"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[StyledCategory(Impostor Settings, 5, 10)]_ImpostorCat("[ Impostor Cat ]", Float) = 0
		_Albedo("Impostor Albedo & Alpha", 2D) = "white" {}
		_Normals("Impostor Normal & Depth", 2D) = "white" {}
		[NoScaleOffset]_Mask("Impostor Baked Masks", 2D) = "white" {}
		[NoScaleOffset]_Emissive("Impostor Emissive Map", 2D) = "white" {}
		_AI_Parallax("Impostor Parallax", Range( 0 , 1)) = 1
		_AI_ShadowView("Impostor Shadow View", Range( 0 , 1)) = 1
		_AI_ShadowBias("Impostor Shadow Bias", Range( 0 , 2)) = 0.25
		_AI_TextureBias("Impostor Texture Bias", Float) = -1
		[HideInInspector]_AI_DepthSize("Impostor Depth Size", Float) = 0
		[HideInInspector]_AI_SizeOffset("Impostor Size Offset", Vector) = (0,0,0,0)
		[HideInInspector]_AI_Offset("Impostor Offset", Vector) = (0,0,0,0)
		[HideInInspector]_AI_ImpostorSize("Impostor Size", Float) = 0
		[HideInInspector]_AI_Frames("Impostor Frames", Float) = 0
		[HideInInspector]_AI_FramesY("Impostor Frames Y", Float) = 0
		[HideInInspector]_AI_FramesX("Impostor Frames X", Float) = 0
		[Enum(Off,0,On,1)]_RenderSpecular("Impostor Render Specular", Float) = 1
		[Enum(Off,0,On,1)]_RenderCoverage("Impostor Alpha To Mask", Float) = 0
		_AI_Clip("Impostor Clip", Range( 0 , 1)) = 0.5
		[HideInInspector]_RenderQueue("Render Queue", Float) = 0
		[HideInInspector]_RenderPriority("Render Priority", Float) = 0
		[HDR][Space(10)]_ImpostorColor("Impostor Color", Color) = (1,1,1,1)
		_ImpostorSmoothnessValue("Impostor Smoothness", Range( 0 , 1)) = 1
		[StyledCategory(Global Settings)]_CategoryGlobal("[ Category Global ]", Float) = 1
		[StyledEnum(TVEColorsLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerColorsValue("Layer Colors", Float) = 0
		[StyledEnum(TVEExtrasLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerExtrasValue("Layer Extras", Float) = 0
		[StyledEnum(TVEMotionLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerMotionValue("Layer Motion", Float) = 0
		[StyledEnum(TVEVertexLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerVertexValue("Layer Vertex", Float) = 0
		[StyledSpace(10)]_SpaceGlobalLayers("# Space Global Layers", Float) = 0
		_GlobalColors("Global Color", Range( 0 , 1)) = 0
		_GlobalAlpha("Global Alpha", Range( 0 , 1)) = 1
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		_GlobalEmissive("Global Emissive", Range( 0 , 1)) = 1
		_GlobalSize("Global Size Fade", Range( 0 , 1)) = 1
		[StyledSpace(10)]_SpaceGlobalLocals("# Space Global Locals", Float) = 0
		_ColorsIntensityValue("Color Intensity", Range( 0 , 2)) = 1
		_ColorsVariationValue("Color Variation", Range( 0 , 1)) = 0
		_AlphaVariationValue("Alpha Variation", Range( 0 , 1)) = 0.5
		_OverlayVariationValue("Overlay Variation", Range( 0 , 1)) = 0.5
		_OverlayProjectionValue("Overlay Projection", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_SpaceGlobalOptions("# Space Global Options", Float) = 0
		[StyledToggle]_ColorsPositionMode("Use Pivot Position for Colors", Float) = 0
		[StyledToggle]_ExtrasPositionMode("Use Pivot Position for Extras", Float) = 0
		[StyledCategory(Occlusion Settings)]_CategoryOcclusion("[ Category Occlusion ]", Float) = 1
		[StyledMessage(Info, Use the Occlusion Color for tinting and the Occlusion Alpha as Global Color and Global Overlay mask multiplier when available., 0, 10)]_MessageOcclusion("# Message Occlusion", Float) = 0
		[HDR]_VertexOcclusionColor("Occlusion Color", Color) = (1,1,1,1)
		[Space(10)][StyledToggle]_VertexOcclusionColorsMode("Use Inverted Mask for Colors", Float) = 0
		[StyledToggle]_VertexOcclusionOverlayMode("Use Inverted Mask for Overlay", Float) = 0
		[StyledCategory(Noise Settings)]_CategoryNoise("[ Category Noise ]", Float) = 1
		[StyledRemapSlider(_NoiseMinValue, _NoiseMaxValue, 0, 1)]_NoiseMaskRemap("Noise Mask Remap", Vector) = (0,0,0,0)
		[StyledCategory(Subsurface Settings)]_CategorySubsurface("[ Category Subsurface ]", Float) = 1
		[DiffusionProfile]_SubsurfaceDiffusion("Subsurface Diffusion", Float) = 0
		[HideInInspector]_SubsurfaceDiffusion_Asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[StyledSpace(10)]_SpaceSubsurface("# Space Subsurface", Float) = 0
		_SubsurfaceValue("Subsurface Intensity", Range( 0 , 1)) = 1
		[HDR]_SubsurfaceColor("Subsurface Color", Color) = (1,1,1,1)
		_SubsurfaceScatteringValue("Subsurface Power", Range( 0 , 16)) = 2
		_SubsurfaceAngleValue("Subsurface Angle", Range( 1 , 16)) = 8
		_SubsurfaceDirectValue("Subsurface Direct", Range( 0 , 1)) = 1
		_SubsurfaceNormalValue("Subsurface Normal", Range( 0 , 1)) = 0
		_SubsurfaceAmbientValue("Subsurface Ambient", Range( 0 , 1)) = 0.2
		_SubsurfaceShadowValue("Subsurface Shadow", Range( 0 , 1)) = 1
		_SubsurfaceMaskValue("Subsurface Use Mask", Range( 0 , 1)) = 1
		[Space(10)]_SubsurfaceThicknessValue("Thickness Amplitude", Range( 0 , 16)) = 0
		_SubsurfaceThicknessMaskValue("Thickness Use Mask", Range( 0 , 1)) = 0
		[StyledCategory(Emissive Settings)]_CategoryEmissive("[ Category Emissive ]", Float) = 1
		[Enum(Off,0,On,1)]_EmissiveMode("Emissive Mode", Float) = 0
		[HDR][Space(10)]_EmissiveColor("Emissive Color", Color) = (0,0,0,0)
		[Enum(Nits,0,EV100,1)]_EmissiveIntensityMode("Emissive Power", Float) = 0
		_EmissiveIntensityValue("Emissive Power", Float) = 1
		_EmissivePhaseValue("Emissive Phase", Range( 0 , 1)) = 1
		_EmissiveExposureValue("Emissive Weight", Range( 0 , 1)) = 1
		[HideInInspector]_emissive_intensity_value("_emissive_intensity_value", Float) = 1
		[StyledCategory(Fade Settings)]_CategorySizeFade("[ Category Size Fade ]", Float) = 1
		[StyledCategory(Motion Settings)]_CategoryMotion("[ Category Motion ]", Float) = 1
		[StyledSpace(10)]_SpaceMotionGlobals("# SpaceMotionGlobals", Float) = 0
		_MotionAmplitude_10("Motion Bending", Range( 0 , 2)) = 0.2
		_MotionPosition_10("Motion Rigidity", Range( 0 , 1)) = 0.5
		[IntRange]_MotionSpeed_10("Motion Speed", Range( 0 , 40)) = 2
		_MotionScale_10("Motion Scale", Range( 0 , 20)) = 1
		[Space(10)]_InteractionAmplitude("Interaction Amplitude", Range( 0 , 2)) = 1
		[HideInInspector]_VertexPivotMode("Enable Pre Baked Pivots", Float) = 0
		[HideInInspector][StyledToggle]_VertexDynamicMode("Enable Dynamic Support", Float) = 0
		[HideInInspector]_VegetationMode("Legacy Vegetation Mode", Float) = 1
		[HideInInspector]_IsImpostorShader("_IsImpostorShader", Float) = 1
		[HideInInspector]_AI_Offset("_AI_Offset", Vector) = (0,0,0,0)
		[HideInInspector]_IsInitialized("_IsInitialized", Float) = 0
		[HideInInspector]_IsTVEShader("_IsTVEShader", Float) = 1
		[HideInInspector]_IsIdentifier("_IsIdentifier", Float) = 0
		[HideInInspector]_IsCollected("_IsCollected", Float) = 0
		[HideInInspector]_IsCustomShader("_IsCustomShader", Float) = 0
		[HideInInspector]_IsShared("_IsShared", Float) = 0
		[HideInInspector]_HasEmissive("_HasEmissive", Float) = 0
		[HideInInspector]_HasGradient("_HasGradient", Float) = 0
		[HideInInspector]_HasOcclusion("_HasOcclusion", Float) = 0
		[HideInInspector]_VertexVariationMode("_VertexVariationMode", Float) = 0
		[HideInInspector]_IsVersion("_IsVersion", Float) = 1230
		[HideInInspector]_IsSubsurfaceShader("_IsSubsurfaceShader", Float) = 1
		[HideInInspector]_IsPlantShader("_IsPlantShader", Float) = 1

	}

	SubShader
	{
		LOD 0

		
		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Opaque" "Queue"="Geometry" "ImpostorType"="Spherical" }

		Cull Back
		Blend One Zero
		ZTest LEqual
		ZWrite On
		ZClip [_ZClip]

		HLSLINCLUDE
		#pragma target 4.5
		#pragma exclude_renderers glcore gles gles3 
		#pragma multi_compile_instancing
		#pragma instancing_options renderinglayer
		#pragma multi_compile _ DOTS_INSTANCING_ON
		#pragma multi_compile _ LOD_FADE_CROSSFADE
		#define AI_RENDERPIPELINE

		struct GlobalSurfaceDescription
		{
			float3 Albedo;
			float3 Normal;
			float3 BentNormal;
			float3 Specular;
			float CoatMask;
			float Metallic;
			float3 Emission;
			float Smoothness;
			float Occlusion;
			float Alpha;
			float AlphaClipThreshold;
			float SpecularAAScreenSpaceVariance;
			float SpecularAAThreshold;
			float SpecularOcclusion;
			//Refraction
			float RefractionIndex;
			float3 RefractionColor;
			float RefractionDistance;
			//SSS/Translucent
			float Thickness;
			float SubsurfaceMask;
			float TransmissionMask;
			float DiffusionProfile;
			//Anisotropy
			float Anisotropy;
			float3 Tangent;
			//Iridescent
			float IridescenceMask;
			float IridescenceThickness;
		};

		struct SurfaceOutput
		{
			half3 Albedo;
			half3 Specular;
			half Metallic;
			float3 Normal;
			half3 Emission;
			half Smoothness;
			half Occlusion;
			half Alpha;
		};

		struct AlphaSurfaceDescription
		{
			float Alpha;
			float AlphaClipThreshold;
		};

		struct SmoothSurfaceDescription
		{
			float Smoothness;
			float Alpha;
			float AlphaClipThreshold;
		};

		struct DistortionSurfaceDescription
		{
			float Alpha;
			float2 Distortion;
			float DistortionBlur;
			float AlphaClipThreshold;
		};
		ENDHLSL

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="GBuffer" }

			Stencil
			{
				Ref 10
				WriteMask 14
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define _DISABLE_DECALS 1
			#define _DISABLE_SSR 1
			#define _MATERIAL_FEATURE_TRANSMISSION 1
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP


			#pragma vertex Vert
			#pragma fragment Frag

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Wind.hlsl"
			//#endif
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#define SHADERPASS SHADERPASS_GBUFFER
			//#pragma multi_compile _ LIGHTMAP_ON
			//#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			//#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			//#pragma multi_compile _ SHADOWS_SHADOWMASK
			//#pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			//#pragma multi_compile_fragment _ SHADOWS_SHADOWMASK
			#pragma multi_compile_fragment _ RENDERING_LAYERS
			#pragma multi_compile_fragment _ PROBE_VOLUMES_L1 PROBE_VOLUMES_L2

			#define VARYINGS_NEED_POSITION_WS
			#define VARYINGS_NEED_TANGENT_TO_WORLD
			#define VARYINGS_NEED_TEXCOORD1
			#define VARYINGS_NEED_TEXCOORD2

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#define T2W(var, index) var.worldToTangent[index]
			//#else
			#define T2W(var, index) var.tangentToWorld[index]
			//#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/CommonLighting.hlsl"
			#define ai_ObjectToWorld GetObjectToWorldMatrix()
			#define ai_WorldToObject GetWorldToObjectMatrix()
			#define AI_INV_TWO_PI  INV_TWO_PI
			#define AI_PI          PI
			#define AI_INV_PI      INV_PI
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_PLANT_SHADER
			#define TVE_IS_SUBSURFACE_SHADER


			struct AttributesMesh
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID

			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float4 frameUVs99 : TEXCOORD5;
				float4 viewPos99 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;
			sampler2D _Albedo;
			sampler2D _Normals;
			sampler2D TVE_NoiseTex;
			float3 TVE_WorldOrigin;
			half TVE_NoiseTexTilling;
			half4 TVE_MotionParams;
			half4 TVE_TimeParams;
			float TVE_MotionUsage[10];
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_WindEditor;
			half TVE_MotionValue_10;
			float TVE_VertexUsage[10];
			TEXTURE2D_ARRAY(TVE_VertexTex);
			half4 TVE_VertexCoords;
			half4 TVE_VertexParams;
			half TVE_IsEnabled;
			half _DisableSRPBatcher;
			sampler2D _Mask;
			sampler2D _Emissive;
			float TVE_ColorsUsage[10];
			TEXTURE2D_ARRAY(TVE_ColorsTex);
			half4 TVE_ColorsCoords;
			half4 TVE_ColorsParams;
			half4 TVE_OverlayColor;
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			half4 TVE_ExtrasParams;
			half TVE_WetnessContrast;
			half TVE_SubsurfaceValue;
			half TVE_OverlaySubsurface;
			half3 TVE_MainLightDirection;
			CBUFFER_START( UnityPerMaterial )
			half4 _SubsurfaceColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			half4 _ImpostorColor;
			half4 _EmissiveColor;
			float4 _SubsurfaceDiffusion_Asset;
			float3 _AI_Offset;
			half _GlobalSize;
			half _LayerVertexValue;
			half _InteractionAmplitude;
			half _MotionAmplitude_10;
			half _LayerMotionValue;
			half _MotionSpeed_10;
			half _CategoryGlobal;
			half _LayerColorsValue;
			half _MotionPosition_10;
			float _AI_Clip;
			float _AI_ShadowView;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			half _MotionScale_10;
			half _ColorsPositionMode;
			half _GlobalColors;
			float _AI_ImpostorSize;
			half _GlobalAlpha;
			half _AlphaVariationValue;
			half _ImpostorSmoothnessValue;
			half _EmissiveExposureValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _SubsurfaceMaskValue;
			half _SubsurfaceValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _OverlayVariationValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _ColorsVariationValue;
			half _VertexDynamicMode;
			half _ColorsIntensityValue;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _IsCollected;
			half _IsIdentifier;
			half _HasOcclusion;
			half _IsTVEShader;
			float _SubsurfaceDiffusion;
			half _SpaceSubsurface;
			half _SpaceMotionGlobals;
			half _SpaceGlobalOptions;
			half _SpaceGlobalLocals;
			half _VertexPivotMode;
			half _RenderPriority;
			half _RenderQueue;
			half _CategoryOcclusion;
			half _SpaceGlobalLayers;
			half _IsVersion;
			half _CategorySizeFade;
			half _CategoryMotion;
			half _CategoryEmissive;
			half _IsSubsurfaceShader;
			float _IsPlantShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _ImpostorCat;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			half _SubsurfaceThicknessMaskValue;
			half _SubsurfaceScatteringValue;
			half _SubsurfaceShadowValue;
			half _SubsurfaceNormalValue;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceThicknessValue;
			CBUFFER_END


			inline void SphereImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 frameUVs, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float sizeX = _AI_FramesX;
				float sizeY = _AI_FramesY - 1; 
				float UVscale = _AI_ImpostorSize;
				float4 fractions = 1 / float4( sizeX, _AI_FramesY, sizeY, UVscale );
				float2 sizeFraction = fractions.xy;
				float axisSizeFraction = fractions.z;
				float fractionsUVscale = fractions.w;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float verticalAngle = frac( atan2( -objectCameraDirection.z, -objectCameraDirection.x ) * AI_INV_TWO_PI ) * sizeX + 0.5;
				float verticalDot = dot( objectCameraDirection, upVector );
				float upAngle = ( acos( -verticalDot ) * AI_INV_PI ) + axisSizeFraction * 0.5f;
				float yRot = sizeFraction.x * AI_PI * verticalDot * ( 2 * frac( verticalAngle ) - 1 );
				float2 uvExpansion = vertex.xy;
				float cosY = cos( yRot );
				float sinY = sin( yRot );
				float2 uvRotator = mul( uvExpansion, float2x2( cosY, -sinY, sinY, cosY ) );
				float3 billboard = objectHorizontalVector * uvRotator.x + objectVerticalVector * uvRotator.y + _AI_Offset.xyz;
				float2 relativeCoords = float2( floor( verticalAngle ), min( floor( upAngle * sizeY ), sizeY ) );
				float2 frameUV = ( ( uvExpansion * fractionsUVscale + 0.5 ) + relativeCoords ) * sizeFraction;
				frameUVs.xy = frameUV - uvOffset;
				frameUVs.zw = 0;
				viewPos.w = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( billboard ) );
				vertex.xyz = billboard;
				normal.xyz = objectCameraDirection;
			}
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			inline void SphereImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 frameUV, float4 viewPos, out float4 output0, out float4 output1 )
			{
				#if _USE_PARALLAX_ON
				float4 parallaxSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, -1) );
				frameUV.xy = ( ( 0.5 - parallaxSample.a ) * frameUV.zw ) + frameUV.xy;
				#endif
				float4 albedoSample = tex2Dbias( _Albedo, float4(frameUV.xy, 0, _AI_TextureBias) );
				o.Alpha = ( albedoSample.a - _AI_Clip );
				clip( o.Alpha );
				o.Albedo = albedoSample.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.MetalTangent = test1.b;
				#endif
				output0 = tex2Dbias( _Mask, float4(frameUV.xy, 0, _AI_TextureBias) );
				output1 = tex2Dbias( _Emissive, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 normalSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 remapNormal = normalSample * 2 - 1; 
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, remapNormal.xyz ) );
				o.Normal = worldNormal;
				#if defined(UNITY_PASS_SHADOWCASTER) // Standard RP fix for deferred path
				float depth = remapNormal.a * _AI_DepthSize * 0.4999 * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depth = remapNormal.a * _AI_DepthSize * 0.5 * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depth * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depth;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos.xyz, 1 ) );
				#if defined(UNITY_PASS_SHADOWCASTER) && !defined(SHADERPASS)
				#if UNITY_REVERSED_Z
				clipPos.z = min( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#else
				clipPos.z = max( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#endif
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			
			float3 ASEGetEmissionHDRColor(float3 ldrColor, float luminanceIntensity, float exposureWeight, float inverseCurrentExposureMultiplier)
			{
				float3 hdrColor = ldrColor * luminanceIntensity;
				hdrColor = lerp( hdrColor* inverseCurrentExposureMultiplier, hdrColor, exposureWeight);
				return hdrColor;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.baseColor =                 surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
				#ifdef _SPECULAR_OCCLUSION_CUSTOM
					surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
				#endif
				surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
				surfaceData.metallic =                  surfaceDescription.Metallic;
				surfaceData.coatMask =                  surfaceDescription.CoatMask;

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
					surfaceData.diffusionProfileHash = asuint(surfaceDescription.DiffusionProfile);
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
					surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
				#endif

					surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif

				#ifdef ASE_LIT_CLEAR_COAT
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
					surfaceData.specularColor = surfaceDescription.Specular;
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
					surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
				#endif

					GetNormalWS( fragInputs, float3( 0.0, 0.0, 1.0 ), surfaceData.normalWS, float3( 1.0, 1.0, 1.0 ) );

					bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
					GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, float3( 1, 1, 1 ) );
				#endif

				surfaceData.geomNormalWS = T2W(fragInputs, 2);

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
					surfaceData.thickness =	                 surfaceDescription.Thickness;
				#endif

				#ifdef _HAS_REFRACTION
					if (_EnableSSRefraction)
					{
						surfaceData.ior =                       surfaceDescription.RefractionIndex;
						surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
						surfaceData.atDistance =                surfaceDescription.RefractionDistance;

						surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
						surfaceDescription.Alpha = 1.0;
					}
					else
					{
						surfaceData.ior = 1.0;
						surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
						surfaceData.atDistance = 1.0;
						surfaceData.transmittanceMask = 0.0;
						surfaceDescription.Alpha = 1.0;
					}
				#else
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
					surfaceData.thickness =	surfaceDescription.Thickness;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
					surfaceData.subsurfaceMask = surfaceDescription.SubsurfaceMask;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
					surfaceData.transmissionMask = surfaceDescription.TransmissionMask;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
					surfaceData.diffusionProfileHash = asuint(surfaceDescription.DiffusionProfile);					
				#endif

					surfaceData.tangentWS = normalize(T2W(fragInputs, 0).xyz);    // The tangent is not normalize in worldToTangent for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.anisotropy = surfaceDescription.Anisotropy;
					surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.worldToTangent);
				#endif
					surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
				#else
					surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
					surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, T2W(fragInputs, 2), surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				//#ifdef LOD_FADE_CROSSFADE
				//	uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx));
				//	LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
				//#endif

				#ifdef _ALPHATEST_ON
					DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
				#endif

				float3 bentNormalWS;
				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData, bentNormalWS);

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION <= 50702
					//InitBuiltinData( surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.positionRWS, fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				//#else
					InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				//#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				builtinData.depthOffset = 0.0;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
					builtinData.distortion = surfaceDescription.Distortion;
					builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
					builtinData.distortion = float2(0.0, 0.0);
					builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID( inputMesh );
				UNITY_TRANSFER_INSTANCE_ID( inputMesh, outputPackedVaryingsMeshToPS );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				SphereImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.frameUVs99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 worldPosOut99 = GetAbsolutePositionWS( mul( UNITY_MATRIX_I_V, float4( outputPackedVaryingsMeshToPS.viewPos99.xyz, 1.0 ) ).xyz );
				float3 WorldPosition4027_g70059 = worldPosOut99;
				float3 worldToObj4970_g70059 = mul( GetWorldToObjectMatrix(), float4( GetCameraRelativePositionWS(WorldPosition4027_g70059), 1 ) ).xyz;
				float3 VertexPosition3564_g70059 = worldToObj4970_g70059;
				half3 VertexPos40_g76291 = VertexPosition3564_g70059;
				half3 VertexPos40_g76292 = VertexPos40_g76291;
				float3 appendResult74_g76292 = (float3(VertexPos40_g76292.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76292 = appendResult74_g76292;
				float3 break84_g76292 = VertexPos40_g76292;
				float3 appendResult81_g76292 = (float3(0.0 , break84_g76292.y , break84_g76292.z));
				half3 VertexPosOtherAxis82_g76292 = appendResult81_g76292;
				float3 WorldPosition_Shifted4972_g70059 = ( WorldPosition4027_g70059 - TVE_WorldOrigin );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76267 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76267 = ( localObjectPosition_UNITY_MATRIX_M14_g76267 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76267 = localObjectPosition_UNITY_MATRIX_M14_g76267;
				#endif
				half3 ObjectData20_g76269 = staticSwitch13_g76267;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76269 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76269 = WorldData19_g76269;
				#else
				float3 staticSwitch14_g76269 = ObjectData20_g76269;
				#endif
				float3 temp_output_114_0_g76267 = staticSwitch14_g76269;
				float3 vertexToFrag4543_g70059 = temp_output_114_0_g76267;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				float3 lerpResult4934_g70059 = lerp( WorldPosition_Shifted4972_g70059 , ObjectPosition_Shifted4976_g70059 , _MotionPosition_10);
				float3 Motion_10_Position4923_g70059 = lerpResult4934_g70059;
				half3 Input_Position419_g73828 = Motion_10_Position4923_g70059;
				float Input_MotionScale287_g73828 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g73828 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g73828 = (( Input_Position419_g73828 * Input_MotionScale287_g73828 * NoiseTex_Tilling735_g73828 * 0.0075 )).xz;
				float2 temp_output_447_0_g75464 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g70059 = temp_output_447_0_g75464;
				half2 Input_DirectionWS423_g73828 = Global_Wind_DirectionWS4464_g70059;
				float lerpResult128_g74632 = lerp( _TimeParameters.x , ( ( _TimeParameters.x * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g73828 = _MotionSpeed_10;
				half Input_MotionVariation284_g73828 = 0.0;
				half Input_GlobalMeshVariation569_g73828 = 0.0;
				float temp_output_630_0_g73828 = ( ( ( lerpResult128_g74632 * Input_MotionSpeed62_g73828 ) + ( Input_MotionVariation284_g73828 * Input_GlobalMeshVariation569_g73828 ) ) * 0.03 );
				float temp_output_607_0_g73828 = frac( temp_output_630_0_g73828 );
				float4 lerpResult590_g73828 = lerp( tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * temp_output_607_0_g73828 ) ), 0, 0.0) ) , tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * frac( ( temp_output_630_0_g73828 + 0.5 ) ) ) ), 0, 0.0) ) , ( abs( ( temp_output_607_0_g73828 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g73828 = lerpResult590_g73828;
				float2 temp_output_645_0_g73828 = ((Noise_Complex703_g73828).rg*2.0 + -1.0);
				float2 break650_g73828 = temp_output_645_0_g73828;
				float3 appendResult649_g73828 = (float3(break650_g73828.x , 0.0 , break650_g73828.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult649_g73828 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76296 = Global_Noise_OS4572_g70059;
				float2 break448_g75464 = temp_output_447_0_g75464;
				float3 appendResult452_g75464 = (float3(break448_g75464.x , 0.0 , break448_g75464.y));
				half2 Global_Wind_DirectionOS4658_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult452_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76296 = Global_Wind_DirectionOS4658_g70059;
				float temp_output_84_0_g70060 = _LayerMotionValue;
				float temp_output_19_0_g70064 = TVE_MotionUsage[(int)temp_output_84_0_g70060];
				float4 temp_output_91_19_g70060 = TVE_MotionCoords;
				half2 UV94_g70060 = ( (temp_output_91_19_g70060).zw + ( (temp_output_91_19_g70060).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70060 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, UV94_g70060,temp_output_84_0_g70060, 0.0 );
				float4 temp_output_17_0_g70064 = tex2DArrayNode50_g70060;
				float4 temp_output_112_19_g70060 = TVE_MotionParams;
				float4 temp_output_3_0_g70064 = temp_output_112_19_g70060;
				float4 ifLocalVar18_g70064 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70064 >= 0.5 )
				ifLocalVar18_g70064 = temp_output_17_0_g70064;
				else
				ifLocalVar18_g70064 = temp_output_3_0_g70064;
				float4 lerpResult22_g70064 = lerp( temp_output_3_0_g70064 , temp_output_17_0_g70064 , temp_output_19_0_g70064);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70064 = lerpResult22_g70064;
				#else
				float4 staticSwitch24_g70064 = ifLocalVar18_g70064;
				#endif
				half4 Global_Motion_Params4344_g70059 = staticSwitch24_g70064;
				float4 break322_g75464 = Global_Motion_Params4344_g70059;
				float lerpResult457_g75464 = lerp( break322_g75464.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g75464 = ( 1.0 - lerpResult457_g75464 );
				half Global_Wind_Power2223_g70059 = ( 1.0 - ( temp_output_459_0_g75464 * temp_output_459_0_g75464 ) );
				half Input_WindPower449_g76296 = Global_Wind_Power2223_g70059;
				float2 lerpResult516_g76296 = lerp( Input_Noise_DirectionOS487_g76296 , Input_Wind_DirectionOS458_g76296 , ( Input_WindPower449_g76296 * 0.6 ));
				half Mesh_Height1524_g70059 = saturate( ( VertexPosition3564_g70059.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76296 = Mesh_Height1524_g70059;
				half ObjectData20_g76297 = Input_MeshHeight388_g76296;
				half Input_BoundsHeight390_g76296 = 1.0;
				half WorldData19_g76297 = ( Input_MeshHeight388_g76296 * Input_MeshHeight388_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76297 = WorldData19_g76297;
				#else
				float staticSwitch14_g76297 = ObjectData20_g76297;
				#endif
				half Final_Motion10_Mask321_g76296 = ( staticSwitch14_g76297 * 2.0 );
				half Motion_10_Amplitude2258_g70059 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76296 = Motion_10_Amplitude2258_g70059;
				half Global_MotionValue640_g76296 = TVE_MotionValue_10;
				half2 Final_Bending631_g76296 = ( lerpResult516_g76296 * ( Final_Motion10_Mask321_g76296 * Input_BendingAmplitude376_g76296 * Input_WindPower449_g76296 * Input_WindPower449_g76296 * Global_MotionValue640_g76296 ) );
				float2 appendResult433_g75464 = (float2(break322_g75464.x , break322_g75464.y));
				float2 temp_output_436_0_g75464 = (appendResult433_g75464*2.0 + -1.0);
				float2 break441_g75464 = temp_output_436_0_g75464;
				float3 appendResult440_g75464 = (float3(break441_g75464.x , 0.0 , break441_g75464.y));
				half2 Global_React_DirectionOS4574_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult440_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76296 = Global_React_DirectionOS4574_g70059;
				float clampResult17_g76299 = clamp( Input_MeshHeight388_g76296 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76298 = 0.0;
				half Input_InteractionUseMask62_g76296 = 0.0;
				float temp_output_10_0_g76298 = ( Input_InteractionUseMask62_g76296 - temp_output_7_0_g76298 );
				half Final_InteractionRemap594_g76296 = saturate( ( ( clampResult17_g76299 - temp_output_7_0_g76298 ) / ( temp_output_10_0_g76298 + 0.0001 ) ) );
				half ObjectData20_g76300 = Final_InteractionRemap594_g76296;
				half WorldData19_g76300 = ( Final_InteractionRemap594_g76296 * Final_InteractionRemap594_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76300 = WorldData19_g76300;
				#else
				float staticSwitch14_g76300 = ObjectData20_g76300;
				#endif
				half Final_InteractionMask373_g76296 = ( staticSwitch14_g76300 * 2.0 );
				half Input_InteractionAmplitude58_g76296 = _InteractionAmplitude;
				half2 Final_Interaction632_g76296 = ( Input_React_DirectionOS358_g76296 * Final_InteractionMask373_g76296 * Input_InteractionAmplitude58_g76296 );
				half Global_React_Mask66_g70059 = ( break322_g75464.w * break322_g75464.w * break322_g75464.w * break322_g75464.w );
				float Input_InteractionGlobalMask330_g76296 = Global_React_Mask66_g70059;
				half Final_InteractionValue525_g76296 = saturate( ( Input_InteractionAmplitude58_g76296 * Input_InteractionGlobalMask330_g76296 ) );
				float2 lerpResult551_g76296 = lerp( Final_Bending631_g76296 , Final_Interaction632_g76296 , Final_InteractionValue525_g76296);
				float2 break364_g76296 = lerpResult551_g76296;
				float3 appendResult638_g76296 = (float3(break364_g76296.x , 0.0 , break364_g76296.y));
				half3 Motion_10_Interaction216_g70059 = appendResult638_g76296;
				half3 Angle44_g76291 = Motion_10_Interaction216_g70059;
				half Angle44_g76292 = (Angle44_g76291).z;
				half3 VertexPos40_g76293 = ( VertexPosRotationAxis50_g76292 + ( VertexPosOtherAxis82_g76292 * cos( Angle44_g76292 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76292 ) * sin( Angle44_g76292 ) ) );
				float3 appendResult74_g76293 = (float3(0.0 , 0.0 , VertexPos40_g76293.z));
				half3 VertexPosRotationAxis50_g76293 = appendResult74_g76293;
				float3 break84_g76293 = VertexPos40_g76293;
				float3 appendResult81_g76293 = (float3(break84_g76293.x , break84_g76293.y , 0.0));
				half3 VertexPosOtherAxis82_g76293 = appendResult81_g76293;
				half Angle44_g76293 = -(Angle44_g76291).x;
				float3 Vertex_Motion_Object833_g70059 = ( VertexPosRotationAxis50_g76293 + ( VertexPosOtherAxis82_g76293 * cos( Angle44_g76293 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76293 ) * sin( Angle44_g76293 ) ) );
				float temp_output_84_0_g70066 = _LayerVertexValue;
				float temp_output_19_0_g70070 = TVE_VertexUsage[(int)temp_output_84_0_g70066];
				float4 temp_output_94_19_g70066 = TVE_VertexCoords;
				half2 UV97_g70066 = ( (temp_output_94_19_g70066).zw + ( (temp_output_94_19_g70066).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70066 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, UV97_g70066,temp_output_84_0_g70066, 0.0 );
				float4 temp_output_17_0_g70070 = tex2DArrayNode50_g70066;
				float4 temp_output_111_19_g70066 = TVE_VertexParams;
				float4 temp_output_3_0_g70070 = temp_output_111_19_g70066;
				float4 ifLocalVar18_g70070 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70070 >= 0.5 )
				ifLocalVar18_g70070 = temp_output_17_0_g70070;
				else
				ifLocalVar18_g70070 = temp_output_3_0_g70070;
				float4 lerpResult22_g70070 = lerp( temp_output_3_0_g70070 , temp_output_17_0_g70070 , temp_output_19_0_g70070);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70070 = lerpResult22_g70070;
				#else
				float4 staticSwitch24_g70070 = ifLocalVar18_g70070;
				#endif
				half4 Global_Vertex_Params4413_g70059 = staticSwitch24_g70070;
				float4 break322_g75463 = Global_Vertex_Params4413_g70059;
				half Global_Vertex_Size174_g70059 = saturate( break322_g75463.w );
				float lerpResult346_g70059 = lerp( 1.0 , Global_Vertex_Size174_g70059 , _GlobalSize);
				float3 appendResult3480_g70059 = (float3(lerpResult346_g70059 , lerpResult346_g70059 , lerpResult346_g70059));
				half3 Vertex_Size1741_g70059 = appendResult3480_g70059;
				float3 Vertex_SizeFade1740_g70059 = half3(1,1,1);
				half IsInitialized3811_g70059 = _IsInitialized;
				float3 lerpResult16_g76287 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g70059 * Vertex_Size1741_g70059 * Vertex_SizeFade1740_g70059 ) - VertexPosition3564_g70059 ) * IsInitialized3811_g70059 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g70059 = ( lerpResult16_g76287 + _DisableSRPBatcher );
				
				outputPackedVaryingsMeshToPS.ase_texcoord7.xyz = vertexToFrag4543_g70059;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord7.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g70059;

				float3 positionRWS = TransformObjectToWorld(inputMesh.vertex.xyz );
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normal );
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangent.xyz), inputMesh.tangent.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz =	positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz =	normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;

				return outputPackedVaryingsMeshToPS;
			}

			void Frag(  PackedVaryingsMeshToPS packedInput,	OUTPUT_GBUFFER(outGBuffer), out float outputDepth : SV_Depth  )
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				#ifdef LOD_FADE_CROSSFADE
				float3 VC = GetWorldSpaceNormalizeViewDir(packedInput.interp00.xyz);
				LODDitheringTransition(ComputeFadeMaskSeed(VC, packedInput.positionCS.xy), unity_LODFade.x);
				#endif

				FragInputs input;

				ZERO_INITIALIZE( FragInputs, input );
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				SurfaceOutput o = (SurfaceOutput)0;

				o.Normal = float3( 0, 0, 1 );
				float4 clipPos = 0;
				float3 worldPos = 0;

				float4 output0 = 0;
				float4 output1 = 0;
				SphereImpostorFragment( o, clipPos, worldPos, packedInput.frameUVs99, packedInput.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g70059 = o.Albedo;
				half3 Main_Albedo3817_g70059 = ( Main_Albedo_Raw4295_g70059 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g70059 = float3(1,1,1);
				float4 break3589_g70059 = output0;
				half Main_Mask_Occlusion3712_g70059 = break3589_g70059.g;
				float3 lerpResult4779_g70059 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g70059);
				half3 Occlusion_Color4789_g70059 = lerpResult4779_g70059;
				half3 Main_Albedo_Tinted4791_g70059 = ( Main_Albedo3817_g70059 * Tint_Noise_Color5005_g70059 * Occlusion_Color4789_g70059 );
				float3 temp_output_3_0_g76289 = Main_Albedo_Tinted4791_g70059;
				float dotResult20_g76289 = dot( temp_output_3_0_g76289 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g70059 = dotResult20_g76289;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g70059).xxx;
				float temp_output_82_0_g70078 = _LayerColorsValue;
				float temp_output_19_0_g70082 = TVE_ColorsUsage[(int)temp_output_82_0_g70078];
				float4 temp_output_91_19_g70078 = TVE_ColorsCoords;
				float3 WorldPosition4027_g70059 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g70059 = packedInput.ase_texcoord7.xyz;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 lerpResult4478_g70059 = lerp( WorldPosition4027_g70059 , ObjectPosition4422_g70059 , _ColorsPositionMode);
				half2 UV94_g70078 = ( (temp_output_91_19_g70078).zw + ( (temp_output_91_19_g70078).xy * (lerpResult4478_g70059).xz ) );
				float4 tex2DArrayNode83_g70078 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, UV94_g70078,temp_output_82_0_g70078, 0.0 );
				float4 temp_output_17_0_g70082 = tex2DArrayNode83_g70078;
				float4 temp_output_92_86_g70078 = TVE_ColorsParams;
				float4 temp_output_3_0_g70082 = temp_output_92_86_g70078;
				float4 ifLocalVar18_g70082 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70082 >= 0.5 )
				ifLocalVar18_g70082 = temp_output_17_0_g70082;
				else
				ifLocalVar18_g70082 = temp_output_3_0_g70082;
				float4 lerpResult22_g70082 = lerp( temp_output_3_0_g70082 , temp_output_17_0_g70082 , temp_output_19_0_g70082);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70082 = lerpResult22_g70082;
				#else
				float4 staticSwitch24_g70082 = ifLocalVar18_g70082;
				#endif
				half4 Global_Colors_Params4558_g70059 = staticSwitch24_g70082;
				float4 temp_output_346_0_g75531 = Global_Colors_Params4558_g70059;
				half Global_Colors_A1701_g70059 = saturate( (temp_output_346_0_g75531).w );
				half Colors_Influence3998_g70059 = Global_Colors_A1701_g70059;
				float temp_output_4814_0_g70059 = ( 1.0 - Colors_Influence3998_g70059 );
				float3 lerpResult4004_g70059 = lerp( Main_Albedo_Tinted4791_g70059 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g70059 * temp_output_4814_0_g70059 ) ));
				half3 Global_Colors_RGB1700_g70059 = (temp_output_346_0_g75531).xyz;
				half3 Colors_RGB3856_g70059 = ( Global_Colors_RGB1700_g70059 * 4.594794 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g70059 = break3589_g70059.b;
				half Colors_Value4022_g70059 = ( Main_Mask_Remap3609_g70059 * _GlobalColors );
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				half3 Input_Position167_g76305 = ObjectPosition_Shifted4976_g70059;
				float dotResult156_g76305 = dot( (Input_Position167_g76305).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g70059 = _VertexDynamicMode;
				half Input_DynamicMode120_g76305 = Global_DynamicMode4535_g70059;
				float Postion_Random162_g76305 = ( sin( dotResult156_g76305 ) * ( 1.0 - Input_DynamicMode120_g76305 ) );
				half Main_Variation_Or_Metallic3607_g70059 = break3589_g70059.r;
				half Input_Variation124_g76305 = Main_Variation_Or_Metallic3607_g70059;
				half ObjectData20_g76307 = frac( ( Postion_Random162_g76305 + Input_Variation124_g76305 ) );
				half WorldData19_g76307 = Input_Variation124_g76305;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76307 = WorldData19_g76307;
				#else
				float staticSwitch14_g76307 = ObjectData20_g76307;
				#endif
				float temp_output_112_0_g76305 = staticSwitch14_g76307;
				float clampResult171_g76305 = clamp( temp_output_112_0_g76305 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g70059 = clampResult171_g76305;
				float lerpResult4092_g70059 = lerp( 1.0 , Global_VariationMesh4531_g70059 , _ColorsVariationValue);
				half Colors_Variation3999_g70059 = lerpResult4092_g70059;
				half Occlusion_Alpha4842_g70059 = _VertexOcclusionColor.a;
				float lerpResult5080_g70059 = lerp( Main_Mask_Occlusion3712_g70059 , ( 1.0 - Main_Mask_Occlusion3712_g70059 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g70059 = lerp( Occlusion_Alpha4842_g70059 , 1.0 , lerpResult5080_g70059);
				half Occlusion_Colors4856_g70059 = lerpResult5078_g70059;
				float3 temp_output_3_0_g76290 = ( Main_Albedo3817_g70059 * Tint_Noise_Color5005_g70059 );
				float dotResult20_g76290 = dot( temp_output_3_0_g76290 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g70059 = clamp( saturate( ( dotResult20_g76290 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g70059 = clampResult4925_g70059;
				float temp_output_7_0_g76280 = 0.1;
				float temp_output_10_0_g76280 = ( 0.2 - temp_output_7_0_g76280 );
				float lerpResult16_g76279 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g70059 * Colors_Variation3999_g70059 * Colors_Influence3998_g70059 * Occlusion_Colors4856_g70059 * Main_Albedo_Globals4847_g70059 ) - temp_output_7_0_g76280 ) / ( temp_output_10_0_g76280 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g70059 = lerp( Main_Albedo_Tinted4791_g70059 , ( lerpResult4004_g70059 * Colors_RGB3856_g70059 ) , lerpResult16_g76279);
				half3 Blend_Albedo_Colored3711_g70059 = lerpResult4007_g70059;
				half3 Global_OverlayColor1758_g70059 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g70072 = _LayerExtrasValue;
				float temp_output_19_0_g70076 = TVE_ExtrasUsage[(int)temp_output_84_0_g70072];
				float4 temp_output_93_19_g70072 = TVE_ExtrasCoords;
				float3 lerpResult4483_g70059 = lerp( WorldPosition4027_g70059 , ObjectPosition4422_g70059 , _ExtrasPositionMode);
				half2 UV96_g70072 = ( (temp_output_93_19_g70072).zw + ( (temp_output_93_19_g70072).xy * (lerpResult4483_g70059).xz ) );
				float4 tex2DArrayNode48_g70072 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g70072,temp_output_84_0_g70072, 0.0 );
				float4 temp_output_17_0_g70076 = tex2DArrayNode48_g70072;
				float4 temp_output_94_85_g70072 = TVE_ExtrasParams;
				float4 temp_output_3_0_g70076 = temp_output_94_85_g70072;
				float4 ifLocalVar18_g70076 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70076 >= 0.5 )
				ifLocalVar18_g70076 = temp_output_17_0_g70076;
				else
				ifLocalVar18_g70076 = temp_output_3_0_g70076;
				float4 lerpResult22_g70076 = lerp( temp_output_3_0_g70076 , temp_output_17_0_g70076 , temp_output_19_0_g70076);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70076 = lerpResult22_g70076;
				#else
				float4 staticSwitch24_g70076 = ifLocalVar18_g70076;
				#endif
				half4 Global_Extras_Params4559_g70059 = staticSwitch24_g70076;
				float4 break456_g76302 = Global_Extras_Params4559_g70059;
				half Global_Extras_Overlay156_g70059 = break456_g76302.z;
				float lerpResult3746_g70059 = lerp( 1.0 , Global_VariationMesh4531_g70059 , _OverlayVariationValue);
				half Overlay_Variation3739_g70059 = lerpResult3746_g70059;
				half Overlay_Value4803_g70059 = ( _GlobalOverlay * Global_Extras_Overlay156_g70059 * Overlay_Variation3739_g70059 );
				half3 World_Normal3638_g70059 = o.Normal;
				float lerpResult4683_g70059 = lerp( 1.0 , saturate( (World_Normal3638_g70059).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g70059 = lerpResult4683_g70059;
				half Overlay_Shading4874_g70059 = Main_Albedo_Globals4847_g70059;
				float lerpResult5086_g70059 = lerp( Main_Mask_Occlusion3712_g70059 , ( 1.0 - Main_Mask_Occlusion3712_g70059 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g70059 = lerp( Occlusion_Alpha4842_g70059 , 1.0 , lerpResult5086_g70059);
				half Occlusion_Overlay4860_g70059 = lerpResult5084_g70059;
				float temp_output_7_0_g76281 = 0.1;
				float temp_output_10_0_g76281 = ( 0.2 - temp_output_7_0_g76281 );
				half Overlay_Mask3762_g70059 = saturate( ( ( ( Overlay_Value4803_g70059 * Overlay_Projection4636_g70059 * Overlay_Shading4874_g70059 * Occlusion_Overlay4860_g70059 ) - temp_output_7_0_g76281 ) / ( temp_output_10_0_g76281 + 0.0001 ) ) );
				float3 lerpResult3875_g70059 = lerp( Blend_Albedo_Colored3711_g70059 , Global_OverlayColor1758_g70059 , Overlay_Mask3762_g70059);
				half3 Blend_Albedo_Overlay4100_g70059 = lerpResult3875_g70059;
				half Global_WetnessContrast4862_g70059 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g70059 = break456_g76302.y;
				half Wetnness_Value4824_g70059 = ( Global_Extras_Wetness305_g70059 * _GlobalWetness );
				float3 lerpResult4833_g70059 = lerp( Blend_Albedo_Overlay4100_g70059 , ( Blend_Albedo_Overlay4100_g70059 * Blend_Albedo_Overlay4100_g70059 ) , ( Global_WetnessContrast4862_g70059 * Wetnness_Value4824_g70059 ));
				half3 Blend_Albedo_Wetness4830_g70059 = lerpResult4833_g70059;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g70059 = _Vector12;
				float3 temp_output_4907_0_g70059 = ( Blend_Albedo_Wetness4830_g70059 * Tint_Highlight_Color4905_g70059 );
				half3 Subsurface_Color3656_g70059 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness4830_g70059 );
				half Global_Subsurface4111_g70059 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface4959_g70059 = TVE_OverlaySubsurface;
				float lerpResult4960_g70059 = lerp( 1.0 , Global_OverlaySubsurface4959_g70059 , Overlay_Value4803_g70059);
				half Overlay_Subsurface4962_g70059 = lerpResult4960_g70059;
				half Subsurface_Intensity3684_g70059 = ( _SubsurfaceValue * Global_Subsurface4111_g70059 * Overlay_Subsurface4962_g70059 );
				float lerpResult5069_g70059 = lerp( 1.0 , Main_Mask_Remap3609_g70059 , _SubsurfaceMaskValue);
				half Subsurface_Mask3666_g70059 = lerpResult5069_g70059;
				half3 MainLight_Direction4110_g70059 = TVE_MainLightDirection;
				float3 ase_worldPos = GetAbsolutePositionWS( packedInput.interp00 );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult3635_g70059 = normalize( ase_worldViewDir );
				float dotResult3631_g70059 = dot( -MainLight_Direction4110_g70059 , normalizeResult3635_g70059 );
				float saferPower3620_g70059 = abs( saturate( dotResult3631_g70059 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch3636_g70059 = 0.0;
				#else
				float staticSwitch3636_g70059 = ( pow( saferPower3620_g70059 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View3614_g70059 = staticSwitch3636_g70059;
				half3 Subsurface_Approximation3702_g70059 = ( Subsurface_Color3656_g70059 * Subsurface_Intensity3684_g70059 * Subsurface_Mask3666_g70059 * Mask_Subsurface_View3614_g70059 );
				half3 Blend_Albedo_Subsurface3874_g70059 = ( temp_output_4907_0_g70059 + Subsurface_Approximation3702_g70059 );
				half IsInitialized3811_g70059 = _IsInitialized;
				float3 lerpResult3815_g70059 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g70059 , IsInitialized3811_g70059);
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g70059 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g70059 = (output1).rgb;
				half Global_Extras_Emissive4408_g70059 = break456_g76302.x;
				float lerpResult4417_g70059 = lerp( 1.0 , Global_Extras_Emissive4408_g70059 , _GlobalEmissive);
				half Emissive_Value4941_g70059 = ( ( lerpResult4417_g70059 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g70059 = saturate( ( Emissive_Texture4942_g70059 + Emissive_Value4941_g70059 ) );
				float3 temp_output_3_0_g76301 = ( Emissive_Color4947_g70059 * Emissive_Mask5026_g70059 );
				float temp_output_15_0_g76301 = _emissive_intensity_value;
				float3 hdEmission22_g76301 = ASEGetEmissionHDRColor(temp_output_3_0_g76301,temp_output_15_0_g76301,_EmissiveExposureValue,GetInverseCurrentExposureMultiplier());
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g70059 = hdEmission22_g76301;
				#else
				float3 staticSwitch5070_g70059 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g70059 = staticSwitch5070_g70059;
				
				half Main_Mask_Smoothness3820_g70059 = break3589_g70059.a;
				half Main_Smoothness3838_g70059 = ( Main_Mask_Smoothness3820_g70059 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g70059 = ( 1.0 - Wetnness_Value4824_g70059 );
				half Blend_Smoothness_Wetness3898_g70059 = saturate( ( Main_Smoothness3838_g70059 + ( 1.0 - ( temp_output_4864_0_g70059 * temp_output_4864_0_g70059 ) ) ) );
				
				float temp_output_3577_0_g70059 = o.Alpha;
				float localCustomAlphaClipAlways4430_g70059 = ( temp_output_3577_0_g70059 );
				half Global_Extras_Alpha1033_g70059 = saturate( break456_g76302.w );
				float lerpResult4544_g70059 = lerp( 0.0 , Global_VariationMesh4531_g70059 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g70059 = lerpResult4544_g70059;
				float lerpResult4053_g70059 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g70059 - Global_Alpha_Variation4546_g70059 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g70059 = lerpResult4053_g70059;
				float Alpha4430_g70059 = Alpha_Composite4102_g70059;
				{
				clip(Alpha4430_g70059 - 0.1);
				}
				half Final_Alpha4955_g70059 = localCustomAlphaClipAlways4430_g70059;
				
				float lerpResult5053_g70059 = lerp( 1.0 , ( 1.0 - Subsurface_Mask3666_g70059 ) , _SubsurfaceThicknessMaskValue);
				half Subsurface_ThicknessValue5062_g70059 = ( lerpResult5053_g70059 * _SubsurfaceThicknessValue );
				half Subsurface_Thickness3650_g70059 = Subsurface_ThicknessValue5062_g70059;
				
				half Subsurface_Transmission4550_g70059 = ( Subsurface_Intensity3684_g70059 * Subsurface_Mask3666_g70059 );
				

				surfaceDescription.Albedo = lerpResult3815_g70059;
				o.Normal = World_Normal3638_g70059;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = Final_Emissive4365_g70059;
				surfaceDescription.Smoothness = Blend_Smoothness_Wetness3898_g70059;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = Final_Alpha4955_g70059;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = Subsurface_Thickness3650_g70059;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3(1,1,1);
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceDescription.TransmissionMask = Subsurface_Transmission4550_g70059;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = _SubsurfaceDiffusion;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3(1,0,0);
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				float4 bakedGI = float4( 0, 0, 0, 0 );

				packedInput.positionCS.zw = clipPos.zw;
				float3 positionRWS = worldPos;
				float3 normalWS = o.Normal;
				float4 tangentWS = packedInput.interp02.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
				//input.worldToTangent = BuildWorldToTangent( tangentWS, normalWS );
				//#else
				input.tangentToWorld = BuildTangentToWorld( tangentWS, normalWS );
				//#endif
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS );
				SurfaceData surfaceData;
				BuiltinData builtinData;

				float3 normalizedWorldViewDir = GetWorldSpaceNormalizeViewDir( input.positionRWS );

				GetSurfaceAndBuiltinData(surfaceDescription,input, normalizedWorldViewDir, posInput, surfaceData, builtinData);

				#ifdef CUSTOM_BAKED_GI
					BSDFData bsdfData = ConvertSurfaceDataToBSDFData( posInput.positionSS, surfaceData );
					half4 decodeInstructions = half4( LIGHTMAP_HDR_MULTIPLIER, LIGHTMAP_HDR_EXPONENT, 0.0h, 0.0h );
					builtinData.bakeDiffuseLighting = UnpackLightmapRGBM( bakedGI, decodeInstructions ) * EMISSIVE_RGBM_SCALE * bsdfData.diffuseColor;
				#endif

				ENCODE_INTO_GBUFFER(surfaceData, builtinData, posInput.positionSS, outGBuffer);

				outputDepth = posInput.deviceDepth;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }
			ColorMask 0

			HLSLPROGRAM
			
			#define _DISABLE_DECALS 1
			#define _DISABLE_SSR 1
			#define _MATERIAL_FEATURE_TRANSMISSION 1
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP

			
			#pragma editor_sync_compilation
			
			#pragma vertex Vert
			#pragma fragment Frag

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Wind.hlsl"
			//#endif
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"


			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENESELECTIONPASS 1

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#define T2W(var, index) var.worldToTangent[index]
			//#else
			#define T2W(var, index) var.tangentToWorld[index]
			//#endif

			int _ObjectId;
			int _PassValue;

			#define ai_ObjectToWorld GetObjectToWorldMatrix()
			#define ai_WorldToObject GetWorldToObjectMatrix()
			#define AI_INV_TWO_PI  INV_TWO_PI
			#define AI_PI          PI
			#define AI_INV_PI      INV_PI
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_PLANT_SHADER
			#define TVE_IS_SUBSURFACE_SHADER


			struct AttributesMesh
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 frameUVs99 : TEXCOORD0;
				float4 viewPos99 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
			};

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;
			sampler2D _Albedo;
			sampler2D _Normals;
			sampler2D TVE_NoiseTex;
			float3 TVE_WorldOrigin;
			half TVE_NoiseTexTilling;
			half4 TVE_MotionParams;
			half4 TVE_TimeParams;
			float TVE_MotionUsage[10];
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_WindEditor;
			half TVE_MotionValue_10;
			float TVE_VertexUsage[10];
			TEXTURE2D_ARRAY(TVE_VertexTex);
			half4 TVE_VertexCoords;
			half4 TVE_VertexParams;
			half TVE_IsEnabled;
			half _DisableSRPBatcher;
			sampler2D _Mask;
			sampler2D _Emissive;
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			half4 TVE_ExtrasParams;
			CBUFFER_START( UnityPerMaterial )
			half4 _SubsurfaceColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			half4 _ImpostorColor;
			half4 _EmissiveColor;
			float4 _SubsurfaceDiffusion_Asset;
			float3 _AI_Offset;
			half _GlobalSize;
			half _LayerVertexValue;
			half _InteractionAmplitude;
			half _MotionAmplitude_10;
			half _LayerMotionValue;
			half _MotionSpeed_10;
			half _CategoryGlobal;
			half _LayerColorsValue;
			half _MotionPosition_10;
			float _AI_Clip;
			float _AI_ShadowView;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			half _MotionScale_10;
			half _ColorsPositionMode;
			half _GlobalColors;
			float _AI_ImpostorSize;
			half _GlobalAlpha;
			half _AlphaVariationValue;
			half _ImpostorSmoothnessValue;
			half _EmissiveExposureValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _SubsurfaceMaskValue;
			half _SubsurfaceValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _OverlayVariationValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _ColorsVariationValue;
			half _VertexDynamicMode;
			half _ColorsIntensityValue;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _IsCollected;
			half _IsIdentifier;
			half _HasOcclusion;
			half _IsTVEShader;
			float _SubsurfaceDiffusion;
			half _SpaceSubsurface;
			half _SpaceMotionGlobals;
			half _SpaceGlobalOptions;
			half _SpaceGlobalLocals;
			half _VertexPivotMode;
			half _RenderPriority;
			half _RenderQueue;
			half _CategoryOcclusion;
			half _SpaceGlobalLayers;
			half _IsVersion;
			half _CategorySizeFade;
			half _CategoryMotion;
			half _CategoryEmissive;
			half _IsSubsurfaceShader;
			float _IsPlantShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _ImpostorCat;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			half _SubsurfaceThicknessMaskValue;
			half _SubsurfaceScatteringValue;
			half _SubsurfaceShadowValue;
			half _SubsurfaceNormalValue;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceThicknessValue;
			CBUFFER_END


			inline void SphereImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 frameUVs, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float sizeX = _AI_FramesX;
				float sizeY = _AI_FramesY - 1; 
				float UVscale = _AI_ImpostorSize;
				float4 fractions = 1 / float4( sizeX, _AI_FramesY, sizeY, UVscale );
				float2 sizeFraction = fractions.xy;
				float axisSizeFraction = fractions.z;
				float fractionsUVscale = fractions.w;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float verticalAngle = frac( atan2( -objectCameraDirection.z, -objectCameraDirection.x ) * AI_INV_TWO_PI ) * sizeX + 0.5;
				float verticalDot = dot( objectCameraDirection, upVector );
				float upAngle = ( acos( -verticalDot ) * AI_INV_PI ) + axisSizeFraction * 0.5f;
				float yRot = sizeFraction.x * AI_PI * verticalDot * ( 2 * frac( verticalAngle ) - 1 );
				float2 uvExpansion = vertex.xy;
				float cosY = cos( yRot );
				float sinY = sin( yRot );
				float2 uvRotator = mul( uvExpansion, float2x2( cosY, -sinY, sinY, cosY ) );
				float3 billboard = objectHorizontalVector * uvRotator.x + objectVerticalVector * uvRotator.y + _AI_Offset.xyz;
				float2 relativeCoords = float2( floor( verticalAngle ), min( floor( upAngle * sizeY ), sizeY ) );
				float2 frameUV = ( ( uvExpansion * fractionsUVscale + 0.5 ) + relativeCoords ) * sizeFraction;
				frameUVs.xy = frameUV - uvOffset;
				frameUVs.zw = 0;
				viewPos.w = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( billboard ) );
				vertex.xyz = billboard;
				normal.xyz = objectCameraDirection;
			}
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			inline void SphereImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 frameUV, float4 viewPos, out float4 output0, out float4 output1 )
			{
				#if _USE_PARALLAX_ON
				float4 parallaxSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, -1) );
				frameUV.xy = ( ( 0.5 - parallaxSample.a ) * frameUV.zw ) + frameUV.xy;
				#endif
				float4 albedoSample = tex2Dbias( _Albedo, float4(frameUV.xy, 0, _AI_TextureBias) );
				o.Alpha = ( albedoSample.a - _AI_Clip );
				clip( o.Alpha );
				o.Albedo = albedoSample.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.MetalTangent = test1.b;
				#endif
				output0 = tex2Dbias( _Mask, float4(frameUV.xy, 0, _AI_TextureBias) );
				output1 = tex2Dbias( _Emissive, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 normalSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 remapNormal = normalSample * 2 - 1; 
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, remapNormal.xyz ) );
				o.Normal = worldNormal;
				#if defined(UNITY_PASS_SHADOWCASTER) // Standard RP fix for deferred path
				float depth = remapNormal.a * _AI_DepthSize * 0.4999 * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depth = remapNormal.a * _AI_DepthSize * 0.5 * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depth * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depth;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos.xyz, 1 ) );
				#if defined(UNITY_PASS_SHADOWCASTER) && !defined(SHADERPASS)
				#if UNITY_REVERSED_Z
				clipPos.z = min( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#else
				clipPos.z = max( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#endif
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
					surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
				#endif

				GetNormalWS( fragInputs, float3( 0.0f, 0.0f, 1.0f ), surfaceData.normalWS, float3( 1.0, 1.0, 1.0 ) );

				bentNormalWS = surfaceData.normalWS;

				#ifdef _HAS_REFRACTION
					if (_EnableSSRefraction)
					{

						surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
						surfaceDescription.Alpha = 1.0;
					}
					else
					{
						surfaceData.ior = 1.0;
						surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
						surfaceData.atDistance = 1.0;
						surfaceData.transmittanceMask = 0.0;
						surfaceDescription.Alpha = 1.0;
					}
				#else
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
				#endif

				surfaceData.tangentWS = normalize(T2W(fragInputs, 0).xyz);    // The tangent is not normalize in worldToTangent for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
				#else
					surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
					surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, T2W(fragInputs, 2), surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
				#endif
			}

			void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				//#ifdef LOD_FADE_CROSSFADE
				//	uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx));
				//	LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
				//#endif

				#ifdef _ALPHATEST_ON
					DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData, bentNormalWS);

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION <= 50702
					//InitBuiltinData( surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.positionRWS, fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				//#else
					InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				//#endif

				builtinData.depthOffset = 0.0;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
					builtinData.distortion = surfaceDescription.Distortion;
					builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
					builtinData.distortion = float2(0.0, 0.0);
					builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh  )
			{
				UNITY_SETUP_INSTANCE_ID( inputMesh );
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_TRANSFER_INSTANCE_ID( inputMesh, outputPackedVaryingsMeshToPS );

				SphereImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.frameUVs99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 worldPosOut99 = GetAbsolutePositionWS( mul( UNITY_MATRIX_I_V, float4( outputPackedVaryingsMeshToPS.viewPos99.xyz, 1.0 ) ).xyz );
				float3 WorldPosition4027_g70059 = worldPosOut99;
				float3 worldToObj4970_g70059 = mul( GetWorldToObjectMatrix(), float4( GetCameraRelativePositionWS(WorldPosition4027_g70059), 1 ) ).xyz;
				float3 VertexPosition3564_g70059 = worldToObj4970_g70059;
				half3 VertexPos40_g76291 = VertexPosition3564_g70059;
				half3 VertexPos40_g76292 = VertexPos40_g76291;
				float3 appendResult74_g76292 = (float3(VertexPos40_g76292.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76292 = appendResult74_g76292;
				float3 break84_g76292 = VertexPos40_g76292;
				float3 appendResult81_g76292 = (float3(0.0 , break84_g76292.y , break84_g76292.z));
				half3 VertexPosOtherAxis82_g76292 = appendResult81_g76292;
				float3 WorldPosition_Shifted4972_g70059 = ( WorldPosition4027_g70059 - TVE_WorldOrigin );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76267 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76267 = ( localObjectPosition_UNITY_MATRIX_M14_g76267 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76267 = localObjectPosition_UNITY_MATRIX_M14_g76267;
				#endif
				half3 ObjectData20_g76269 = staticSwitch13_g76267;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76269 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76269 = WorldData19_g76269;
				#else
				float3 staticSwitch14_g76269 = ObjectData20_g76269;
				#endif
				float3 temp_output_114_0_g76267 = staticSwitch14_g76269;
				float3 vertexToFrag4543_g70059 = temp_output_114_0_g76267;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				float3 lerpResult4934_g70059 = lerp( WorldPosition_Shifted4972_g70059 , ObjectPosition_Shifted4976_g70059 , _MotionPosition_10);
				float3 Motion_10_Position4923_g70059 = lerpResult4934_g70059;
				half3 Input_Position419_g73828 = Motion_10_Position4923_g70059;
				float Input_MotionScale287_g73828 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g73828 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g73828 = (( Input_Position419_g73828 * Input_MotionScale287_g73828 * NoiseTex_Tilling735_g73828 * 0.0075 )).xz;
				float2 temp_output_447_0_g75464 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g70059 = temp_output_447_0_g75464;
				half2 Input_DirectionWS423_g73828 = Global_Wind_DirectionWS4464_g70059;
				float lerpResult128_g74632 = lerp( _TimeParameters.x , ( ( _TimeParameters.x * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g73828 = _MotionSpeed_10;
				half Input_MotionVariation284_g73828 = 0.0;
				half Input_GlobalMeshVariation569_g73828 = 0.0;
				float temp_output_630_0_g73828 = ( ( ( lerpResult128_g74632 * Input_MotionSpeed62_g73828 ) + ( Input_MotionVariation284_g73828 * Input_GlobalMeshVariation569_g73828 ) ) * 0.03 );
				float temp_output_607_0_g73828 = frac( temp_output_630_0_g73828 );
				float4 lerpResult590_g73828 = lerp( tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * temp_output_607_0_g73828 ) ), 0, 0.0) ) , tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * frac( ( temp_output_630_0_g73828 + 0.5 ) ) ) ), 0, 0.0) ) , ( abs( ( temp_output_607_0_g73828 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g73828 = lerpResult590_g73828;
				float2 temp_output_645_0_g73828 = ((Noise_Complex703_g73828).rg*2.0 + -1.0);
				float2 break650_g73828 = temp_output_645_0_g73828;
				float3 appendResult649_g73828 = (float3(break650_g73828.x , 0.0 , break650_g73828.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult649_g73828 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76296 = Global_Noise_OS4572_g70059;
				float2 break448_g75464 = temp_output_447_0_g75464;
				float3 appendResult452_g75464 = (float3(break448_g75464.x , 0.0 , break448_g75464.y));
				half2 Global_Wind_DirectionOS4658_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult452_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76296 = Global_Wind_DirectionOS4658_g70059;
				float temp_output_84_0_g70060 = _LayerMotionValue;
				float temp_output_19_0_g70064 = TVE_MotionUsage[(int)temp_output_84_0_g70060];
				float4 temp_output_91_19_g70060 = TVE_MotionCoords;
				half2 UV94_g70060 = ( (temp_output_91_19_g70060).zw + ( (temp_output_91_19_g70060).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70060 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, UV94_g70060,temp_output_84_0_g70060, 0.0 );
				float4 temp_output_17_0_g70064 = tex2DArrayNode50_g70060;
				float4 temp_output_112_19_g70060 = TVE_MotionParams;
				float4 temp_output_3_0_g70064 = temp_output_112_19_g70060;
				float4 ifLocalVar18_g70064 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70064 >= 0.5 )
				ifLocalVar18_g70064 = temp_output_17_0_g70064;
				else
				ifLocalVar18_g70064 = temp_output_3_0_g70064;
				float4 lerpResult22_g70064 = lerp( temp_output_3_0_g70064 , temp_output_17_0_g70064 , temp_output_19_0_g70064);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70064 = lerpResult22_g70064;
				#else
				float4 staticSwitch24_g70064 = ifLocalVar18_g70064;
				#endif
				half4 Global_Motion_Params4344_g70059 = staticSwitch24_g70064;
				float4 break322_g75464 = Global_Motion_Params4344_g70059;
				float lerpResult457_g75464 = lerp( break322_g75464.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g75464 = ( 1.0 - lerpResult457_g75464 );
				half Global_Wind_Power2223_g70059 = ( 1.0 - ( temp_output_459_0_g75464 * temp_output_459_0_g75464 ) );
				half Input_WindPower449_g76296 = Global_Wind_Power2223_g70059;
				float2 lerpResult516_g76296 = lerp( Input_Noise_DirectionOS487_g76296 , Input_Wind_DirectionOS458_g76296 , ( Input_WindPower449_g76296 * 0.6 ));
				half Mesh_Height1524_g70059 = saturate( ( VertexPosition3564_g70059.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76296 = Mesh_Height1524_g70059;
				half ObjectData20_g76297 = Input_MeshHeight388_g76296;
				half Input_BoundsHeight390_g76296 = 1.0;
				half WorldData19_g76297 = ( Input_MeshHeight388_g76296 * Input_MeshHeight388_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76297 = WorldData19_g76297;
				#else
				float staticSwitch14_g76297 = ObjectData20_g76297;
				#endif
				half Final_Motion10_Mask321_g76296 = ( staticSwitch14_g76297 * 2.0 );
				half Motion_10_Amplitude2258_g70059 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76296 = Motion_10_Amplitude2258_g70059;
				half Global_MotionValue640_g76296 = TVE_MotionValue_10;
				half2 Final_Bending631_g76296 = ( lerpResult516_g76296 * ( Final_Motion10_Mask321_g76296 * Input_BendingAmplitude376_g76296 * Input_WindPower449_g76296 * Input_WindPower449_g76296 * Global_MotionValue640_g76296 ) );
				float2 appendResult433_g75464 = (float2(break322_g75464.x , break322_g75464.y));
				float2 temp_output_436_0_g75464 = (appendResult433_g75464*2.0 + -1.0);
				float2 break441_g75464 = temp_output_436_0_g75464;
				float3 appendResult440_g75464 = (float3(break441_g75464.x , 0.0 , break441_g75464.y));
				half2 Global_React_DirectionOS4574_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult440_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76296 = Global_React_DirectionOS4574_g70059;
				float clampResult17_g76299 = clamp( Input_MeshHeight388_g76296 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76298 = 0.0;
				half Input_InteractionUseMask62_g76296 = 0.0;
				float temp_output_10_0_g76298 = ( Input_InteractionUseMask62_g76296 - temp_output_7_0_g76298 );
				half Final_InteractionRemap594_g76296 = saturate( ( ( clampResult17_g76299 - temp_output_7_0_g76298 ) / ( temp_output_10_0_g76298 + 0.0001 ) ) );
				half ObjectData20_g76300 = Final_InteractionRemap594_g76296;
				half WorldData19_g76300 = ( Final_InteractionRemap594_g76296 * Final_InteractionRemap594_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76300 = WorldData19_g76300;
				#else
				float staticSwitch14_g76300 = ObjectData20_g76300;
				#endif
				half Final_InteractionMask373_g76296 = ( staticSwitch14_g76300 * 2.0 );
				half Input_InteractionAmplitude58_g76296 = _InteractionAmplitude;
				half2 Final_Interaction632_g76296 = ( Input_React_DirectionOS358_g76296 * Final_InteractionMask373_g76296 * Input_InteractionAmplitude58_g76296 );
				half Global_React_Mask66_g70059 = ( break322_g75464.w * break322_g75464.w * break322_g75464.w * break322_g75464.w );
				float Input_InteractionGlobalMask330_g76296 = Global_React_Mask66_g70059;
				half Final_InteractionValue525_g76296 = saturate( ( Input_InteractionAmplitude58_g76296 * Input_InteractionGlobalMask330_g76296 ) );
				float2 lerpResult551_g76296 = lerp( Final_Bending631_g76296 , Final_Interaction632_g76296 , Final_InteractionValue525_g76296);
				float2 break364_g76296 = lerpResult551_g76296;
				float3 appendResult638_g76296 = (float3(break364_g76296.x , 0.0 , break364_g76296.y));
				half3 Motion_10_Interaction216_g70059 = appendResult638_g76296;
				half3 Angle44_g76291 = Motion_10_Interaction216_g70059;
				half Angle44_g76292 = (Angle44_g76291).z;
				half3 VertexPos40_g76293 = ( VertexPosRotationAxis50_g76292 + ( VertexPosOtherAxis82_g76292 * cos( Angle44_g76292 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76292 ) * sin( Angle44_g76292 ) ) );
				float3 appendResult74_g76293 = (float3(0.0 , 0.0 , VertexPos40_g76293.z));
				half3 VertexPosRotationAxis50_g76293 = appendResult74_g76293;
				float3 break84_g76293 = VertexPos40_g76293;
				float3 appendResult81_g76293 = (float3(break84_g76293.x , break84_g76293.y , 0.0));
				half3 VertexPosOtherAxis82_g76293 = appendResult81_g76293;
				half Angle44_g76293 = -(Angle44_g76291).x;
				float3 Vertex_Motion_Object833_g70059 = ( VertexPosRotationAxis50_g76293 + ( VertexPosOtherAxis82_g76293 * cos( Angle44_g76293 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76293 ) * sin( Angle44_g76293 ) ) );
				float temp_output_84_0_g70066 = _LayerVertexValue;
				float temp_output_19_0_g70070 = TVE_VertexUsage[(int)temp_output_84_0_g70066];
				float4 temp_output_94_19_g70066 = TVE_VertexCoords;
				half2 UV97_g70066 = ( (temp_output_94_19_g70066).zw + ( (temp_output_94_19_g70066).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70066 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, UV97_g70066,temp_output_84_0_g70066, 0.0 );
				float4 temp_output_17_0_g70070 = tex2DArrayNode50_g70066;
				float4 temp_output_111_19_g70066 = TVE_VertexParams;
				float4 temp_output_3_0_g70070 = temp_output_111_19_g70066;
				float4 ifLocalVar18_g70070 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70070 >= 0.5 )
				ifLocalVar18_g70070 = temp_output_17_0_g70070;
				else
				ifLocalVar18_g70070 = temp_output_3_0_g70070;
				float4 lerpResult22_g70070 = lerp( temp_output_3_0_g70070 , temp_output_17_0_g70070 , temp_output_19_0_g70070);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70070 = lerpResult22_g70070;
				#else
				float4 staticSwitch24_g70070 = ifLocalVar18_g70070;
				#endif
				half4 Global_Vertex_Params4413_g70059 = staticSwitch24_g70070;
				float4 break322_g75463 = Global_Vertex_Params4413_g70059;
				half Global_Vertex_Size174_g70059 = saturate( break322_g75463.w );
				float lerpResult346_g70059 = lerp( 1.0 , Global_Vertex_Size174_g70059 , _GlobalSize);
				float3 appendResult3480_g70059 = (float3(lerpResult346_g70059 , lerpResult346_g70059 , lerpResult346_g70059));
				half3 Vertex_Size1741_g70059 = appendResult3480_g70059;
				float3 Vertex_SizeFade1740_g70059 = half3(1,1,1);
				half IsInitialized3811_g70059 = _IsInitialized;
				float3 lerpResult16_g76287 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g70059 * Vertex_Size1741_g70059 * Vertex_SizeFade1740_g70059 ) - VertexPosition3564_g70059 ) * IsInitialized3811_g70059 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g70059 = ( lerpResult16_g76287 + _DisableSRPBatcher );
				
				outputPackedVaryingsMeshToPS.ase_texcoord2.xyz = vertexToFrag4543_g70059;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord2.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g70059;

				float3 positionRWS = TransformObjectToWorld(inputMesh.vertex.xyz );
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				return outputPackedVaryingsMeshToPS;
			}

			void Frag(  PackedVaryingsMeshToPS packedInput
				#ifdef WRITE_NORMAL_BUFFER
				, out float4 outNormalBuffer : SV_Target0
					#ifdef WRITE_MSAA_DEPTH
				, out float1 depthColor : SV_Target1
					#endif
				#elif defined(SCENESELECTIONPASS)
				, out float4 outColor : SV_Target0
				#endif
				, out float outputDepth : SV_Depth
				
			)
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );

				//#ifdef LOD_FADE_CROSSFADE
				//float3 VC = GetWorldSpaceNormalizeViewDir(packedInput.interp00.xyz);
				//LODDitheringTransition(ComputeFadeMaskSeed(VC, packedInput.positionCS.xy), unity_LODFade.x);
				//#endif

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				SurfaceOutput o = (SurfaceOutput)0;

				o.Normal = float3( 0, 0, 1 );
				float4 clipPos = 0;
				float3 worldPos = 0;
				float4 output0 = 0;
				float4 output1 = 0;
				SphereImpostorFragment( o, clipPos, worldPos, packedInput.frameUVs99, packedInput.viewPos99, output0, output1 );
				float temp_output_3577_0_g70059 = o.Alpha;
				float localCustomAlphaClipAlways4430_g70059 = ( temp_output_3577_0_g70059 );
				float temp_output_84_0_g70072 = _LayerExtrasValue;
				float temp_output_19_0_g70076 = TVE_ExtrasUsage[(int)temp_output_84_0_g70072];
				float4 temp_output_93_19_g70072 = TVE_ExtrasCoords;
				float3 WorldPosition4027_g70059 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g70059 = packedInput.ase_texcoord2.xyz;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 lerpResult4483_g70059 = lerp( WorldPosition4027_g70059 , ObjectPosition4422_g70059 , _ExtrasPositionMode);
				half2 UV96_g70072 = ( (temp_output_93_19_g70072).zw + ( (temp_output_93_19_g70072).xy * (lerpResult4483_g70059).xz ) );
				float4 tex2DArrayNode48_g70072 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g70072,temp_output_84_0_g70072, 0.0 );
				float4 temp_output_17_0_g70076 = tex2DArrayNode48_g70072;
				float4 temp_output_94_85_g70072 = TVE_ExtrasParams;
				float4 temp_output_3_0_g70076 = temp_output_94_85_g70072;
				float4 ifLocalVar18_g70076 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70076 >= 0.5 )
				ifLocalVar18_g70076 = temp_output_17_0_g70076;
				else
				ifLocalVar18_g70076 = temp_output_3_0_g70076;
				float4 lerpResult22_g70076 = lerp( temp_output_3_0_g70076 , temp_output_17_0_g70076 , temp_output_19_0_g70076);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70076 = lerpResult22_g70076;
				#else
				float4 staticSwitch24_g70076 = ifLocalVar18_g70076;
				#endif
				half4 Global_Extras_Params4559_g70059 = staticSwitch24_g70076;
				float4 break456_g76302 = Global_Extras_Params4559_g70059;
				half Global_Extras_Alpha1033_g70059 = saturate( break456_g76302.w );
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				half3 Input_Position167_g76305 = ObjectPosition_Shifted4976_g70059;
				float dotResult156_g76305 = dot( (Input_Position167_g76305).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g70059 = _VertexDynamicMode;
				half Input_DynamicMode120_g76305 = Global_DynamicMode4535_g70059;
				float Postion_Random162_g76305 = ( sin( dotResult156_g76305 ) * ( 1.0 - Input_DynamicMode120_g76305 ) );
				float4 break3589_g70059 = output0;
				half Main_Variation_Or_Metallic3607_g70059 = break3589_g70059.r;
				half Input_Variation124_g76305 = Main_Variation_Or_Metallic3607_g70059;
				half ObjectData20_g76307 = frac( ( Postion_Random162_g76305 + Input_Variation124_g76305 ) );
				half WorldData19_g76307 = Input_Variation124_g76305;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76307 = WorldData19_g76307;
				#else
				float staticSwitch14_g76307 = ObjectData20_g76307;
				#endif
				float temp_output_112_0_g76305 = staticSwitch14_g76307;
				float clampResult171_g76305 = clamp( temp_output_112_0_g76305 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g70059 = clampResult171_g76305;
				float lerpResult4544_g70059 = lerp( 0.0 , Global_VariationMesh4531_g70059 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g70059 = lerpResult4544_g70059;
				float lerpResult4053_g70059 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g70059 - Global_Alpha_Variation4546_g70059 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g70059 = lerpResult4053_g70059;
				float Alpha4430_g70059 = Alpha_Composite4102_g70059;
				{
				clip(Alpha4430_g70059 - 0.1);
				}
				half Final_Alpha4955_g70059 = localCustomAlphaClipAlways4430_g70059;
				
				surfaceDescription.Alpha = Final_Alpha4955_g70059;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				packedInput.positionCS.zw = clipPos.zw;
				float3 positionRWS = worldPos;

				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
				//input.worldToTangent = k_identity3x3;
				//#else
				input.tangentToWorld = k_identity3x3;
				//#endif

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS );

				float3 normalizedWorldViewDir = GetWorldSpaceNormalizeViewDir( input.positionRWS );

				SurfaceData surfaceData;
				BuiltinData builtinData;

				GetSurfaceAndBuiltinData(surfaceDescription,input, normalizedWorldViewDir, posInput, surfaceData, builtinData);

				outputDepth = posInput.deviceDepth;

				#ifdef WRITE_NORMAL_BUFFER
					EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), posInput.positionSS, outNormalBuffer);
					#ifdef WRITE_MSAA_DEPTH
					depthColor = packedInput.positionCS.z;
					#endif
				#elif defined(SCENESELECTIONPASS)
					outColor = float4(_ObjectId, _PassValue, 1.0, 1.0);
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "META"
			Tags { "LightMode"="Meta" }
			Cull Off

			HLSLPROGRAM

			#define _DISABLE_DECALS 1
			#define _DISABLE_SSR 1
			#define _MATERIAL_FEATURE_TRANSMISSION 1
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP


			#pragma vertex Vert
			#pragma fragment Frag

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Wind.hlsl"
			//#endif
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#define SHADERPASS SHADERPASS_LIGHT_TRANSPORT

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#define T2W(var, index) var.worldToTangent[index]
			//#else
			#define T2W(var, index) var.tangentToWorld[index]
			//#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/CommonLighting.hlsl"
			#define ai_ObjectToWorld GetObjectToWorldMatrix()
			#define ai_WorldToObject GetWorldToObjectMatrix()
			#define AI_INV_TWO_PI  INV_TWO_PI
			#define AI_PI          PI
			#define AI_INV_PI      INV_PI
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_PLANT_SHADER
			#define TVE_IS_SUBSURFACE_SHADER


			struct AttributesMesh
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 frameUVs99 : TEXCOORD0;
				float4 viewPos99 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
			};

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;
			sampler2D _Albedo;
			sampler2D _Normals;
			sampler2D TVE_NoiseTex;
			float3 TVE_WorldOrigin;
			half TVE_NoiseTexTilling;
			half4 TVE_MotionParams;
			half4 TVE_TimeParams;
			float TVE_MotionUsage[10];
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_WindEditor;
			half TVE_MotionValue_10;
			float TVE_VertexUsage[10];
			TEXTURE2D_ARRAY(TVE_VertexTex);
			half4 TVE_VertexCoords;
			half4 TVE_VertexParams;
			half TVE_IsEnabled;
			half _DisableSRPBatcher;
			sampler2D _Mask;
			sampler2D _Emissive;
			float TVE_ColorsUsage[10];
			TEXTURE2D_ARRAY(TVE_ColorsTex);
			half4 TVE_ColorsCoords;
			half4 TVE_ColorsParams;
			half4 TVE_OverlayColor;
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			half4 TVE_ExtrasParams;
			half TVE_WetnessContrast;
			half TVE_SubsurfaceValue;
			half TVE_OverlaySubsurface;
			half3 TVE_MainLightDirection;
			CBUFFER_START( UnityPerMaterial )
			half4 _SubsurfaceColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			half4 _ImpostorColor;
			half4 _EmissiveColor;
			float4 _SubsurfaceDiffusion_Asset;
			float3 _AI_Offset;
			half _GlobalSize;
			half _LayerVertexValue;
			half _InteractionAmplitude;
			half _MotionAmplitude_10;
			half _LayerMotionValue;
			half _MotionSpeed_10;
			half _CategoryGlobal;
			half _LayerColorsValue;
			half _MotionPosition_10;
			float _AI_Clip;
			float _AI_ShadowView;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			half _MotionScale_10;
			half _ColorsPositionMode;
			half _GlobalColors;
			float _AI_ImpostorSize;
			half _GlobalAlpha;
			half _AlphaVariationValue;
			half _ImpostorSmoothnessValue;
			half _EmissiveExposureValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _SubsurfaceMaskValue;
			half _SubsurfaceValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _OverlayVariationValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _ColorsVariationValue;
			half _VertexDynamicMode;
			half _ColorsIntensityValue;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _IsCollected;
			half _IsIdentifier;
			half _HasOcclusion;
			half _IsTVEShader;
			float _SubsurfaceDiffusion;
			half _SpaceSubsurface;
			half _SpaceMotionGlobals;
			half _SpaceGlobalOptions;
			half _SpaceGlobalLocals;
			half _VertexPivotMode;
			half _RenderPriority;
			half _RenderQueue;
			half _CategoryOcclusion;
			half _SpaceGlobalLayers;
			half _IsVersion;
			half _CategorySizeFade;
			half _CategoryMotion;
			half _CategoryEmissive;
			half _IsSubsurfaceShader;
			float _IsPlantShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _ImpostorCat;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			half _SubsurfaceThicknessMaskValue;
			half _SubsurfaceScatteringValue;
			half _SubsurfaceShadowValue;
			half _SubsurfaceNormalValue;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceThicknessValue;
			CBUFFER_END


			inline void SphereImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 frameUVs, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float sizeX = _AI_FramesX;
				float sizeY = _AI_FramesY - 1; 
				float UVscale = _AI_ImpostorSize;
				float4 fractions = 1 / float4( sizeX, _AI_FramesY, sizeY, UVscale );
				float2 sizeFraction = fractions.xy;
				float axisSizeFraction = fractions.z;
				float fractionsUVscale = fractions.w;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float verticalAngle = frac( atan2( -objectCameraDirection.z, -objectCameraDirection.x ) * AI_INV_TWO_PI ) * sizeX + 0.5;
				float verticalDot = dot( objectCameraDirection, upVector );
				float upAngle = ( acos( -verticalDot ) * AI_INV_PI ) + axisSizeFraction * 0.5f;
				float yRot = sizeFraction.x * AI_PI * verticalDot * ( 2 * frac( verticalAngle ) - 1 );
				float2 uvExpansion = vertex.xy;
				float cosY = cos( yRot );
				float sinY = sin( yRot );
				float2 uvRotator = mul( uvExpansion, float2x2( cosY, -sinY, sinY, cosY ) );
				float3 billboard = objectHorizontalVector * uvRotator.x + objectVerticalVector * uvRotator.y + _AI_Offset.xyz;
				float2 relativeCoords = float2( floor( verticalAngle ), min( floor( upAngle * sizeY ), sizeY ) );
				float2 frameUV = ( ( uvExpansion * fractionsUVscale + 0.5 ) + relativeCoords ) * sizeFraction;
				frameUVs.xy = frameUV - uvOffset;
				frameUVs.zw = 0;
				viewPos.w = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( billboard ) );
				vertex.xyz = billboard;
				normal.xyz = objectCameraDirection;
			}
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			inline void SphereImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 frameUV, float4 viewPos, out float4 output0, out float4 output1 )
			{
				#if _USE_PARALLAX_ON
				float4 parallaxSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, -1) );
				frameUV.xy = ( ( 0.5 - parallaxSample.a ) * frameUV.zw ) + frameUV.xy;
				#endif
				float4 albedoSample = tex2Dbias( _Albedo, float4(frameUV.xy, 0, _AI_TextureBias) );
				o.Alpha = ( albedoSample.a - _AI_Clip );
				clip( o.Alpha );
				o.Albedo = albedoSample.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.MetalTangent = test1.b;
				#endif
				output0 = tex2Dbias( _Mask, float4(frameUV.xy, 0, _AI_TextureBias) );
				output1 = tex2Dbias( _Emissive, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 normalSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 remapNormal = normalSample * 2 - 1; 
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, remapNormal.xyz ) );
				o.Normal = worldNormal;
				#if defined(UNITY_PASS_SHADOWCASTER) // Standard RP fix for deferred path
				float depth = remapNormal.a * _AI_DepthSize * 0.4999 * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depth = remapNormal.a * _AI_DepthSize * 0.5 * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depth * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depth;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos.xyz, 1 ) );
				#if defined(UNITY_PASS_SHADOWCASTER) && !defined(SHADERPASS)
				#if UNITY_REVERSED_Z
				clipPos.z = min( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#else
				clipPos.z = max( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#endif
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			
			float3 ASEGetEmissionHDRColor(float3 ldrColor, float luminanceIntensity, float exposureWeight, float inverseCurrentExposureMultiplier)
			{
				float3 hdrColor = ldrColor * luminanceIntensity;
				hdrColor = lerp( hdrColor* inverseCurrentExposureMultiplier, hdrColor, exposureWeight);
				return hdrColor;
			}
			

			void BuildSurfaceData( FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS )
			{
				ZERO_INITIALIZE( SurfaceData, surfaceData );
				surfaceData.baseColor = surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness = surfaceDescription.Smoothness;
				#ifdef _SPECULAR_OCCLUSION_CUSTOM
					surfaceData.specularOcclusion = surfaceDescription.SpecularOcclusion;
				#endif
					surfaceData.ambientOcclusion = surfaceDescription.Occlusion;
					surfaceData.metallic = surfaceDescription.Metallic;
					surfaceData.coatMask = surfaceDescription.CoatMask;

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.iridescenceMask = surfaceDescription.IridescenceMask;
					surfaceData.iridescenceThickness = surfaceDescription.IridescenceThickness;
				#endif
					surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif

				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
					surfaceData.specularColor = surfaceDescription.Specular;
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
					surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
					//float3 normalTS = float3( 0.0f, 0.0f, 1.0f );
					//normalTS = surfaceDescription.Normal;
					GetNormalWS( fragInputs, float3( 0.0, 0.0, 1.0 ), surfaceData.normalWS, float3( 1.0, 1.0, 1.0 ) );
					bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
					GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, float4( 1, 1, -1, 0 ) );
				#endif

				surfaceData.geomNormalWS = T2W(fragInputs, 2);

				#ifdef _HAS_REFRACTION
					if( _EnableSSRefraction )
					{
						surfaceData.ior = surfaceDescription.RefractionIndex;
						surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
						surfaceData.atDistance = surfaceDescription.RefractionDistance;

						surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
						surfaceDescription.Alpha = 1.0;
					}
					else
					{
						surfaceData.ior = 1.0;
						surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
						surfaceData.atDistance = 1.0;
						surfaceData.transmittanceMask = 0.0;
						surfaceDescription.Alpha = 1.0;
					}
				#else
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
					surfaceData.thickness = surfaceDescription.Thickness;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask = surfaceDescription.SubsurfaceMask;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.transmissionMask = surfaceDescription.TransmissionMask;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash = asuint(surfaceDescription.DiffusionProfile);
				#endif

					surfaceData.tangentWS = normalize( T2W(fragInputs, 0).xyz );    // The tangent is not normalize in worldToTangent for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.anisotropy = surfaceDescription.Anisotropy;
					surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.worldToTangent );
				#endif
					surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );
				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#else
					surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
					surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, T2W(fragInputs, 2), surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

			}

			void GetSurfaceAndBuiltinData( GlobalSurfaceDescription surfaceDescription,FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData )
			{
				//#ifdef LOD_FADE_CROSSFADE
				//	uint3 fadeMaskSeed = asuint( ( int3 )( V * _ScreenSize.xyx ) ); // Quantize V to _ScreenSize values
				//	LODDitheringTransition( fadeMaskSeed, unity_LODFade.x );
				//#endif

				#ifdef _ALPHATEST_ON
					DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData, bentNormalWS );

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION <= 50702
					//InitBuiltinData( surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.positionRWS, fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				//#else
					InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				//#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				builtinData.depthOffset = 0.0;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
					builtinData.distortion = surfaceDescription.Distortion;
					builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
					builtinData.distortion = float2( 0.0, 0.0 );
					builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData( V, posInput, surfaceData, builtinData );
			}

			CBUFFER_START( UnityMetaPass )
			bool4 unity_MetaVertexControl;
			bool4 unity_MetaFragmentControl;
			CBUFFER_END

			float unity_OneOverOutputBoost;
			float unity_MaxOutputValue;

			PackedVaryingsMeshToPS Vert( AttributesMesh inputMesh  )
			{
				UNITY_SETUP_INSTANCE_ID( inputMesh );
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_TRANSFER_INSTANCE_ID( inputMesh, outputPackedVaryingsMeshToPS );

				SphereImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.frameUVs99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 worldPosOut99 = GetAbsolutePositionWS( mul( UNITY_MATRIX_I_V, float4( outputPackedVaryingsMeshToPS.viewPos99.xyz, 1.0 ) ).xyz );
				float3 WorldPosition4027_g70059 = worldPosOut99;
				float3 worldToObj4970_g70059 = mul( GetWorldToObjectMatrix(), float4( GetCameraRelativePositionWS(WorldPosition4027_g70059), 1 ) ).xyz;
				float3 VertexPosition3564_g70059 = worldToObj4970_g70059;
				half3 VertexPos40_g76291 = VertexPosition3564_g70059;
				half3 VertexPos40_g76292 = VertexPos40_g76291;
				float3 appendResult74_g76292 = (float3(VertexPos40_g76292.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76292 = appendResult74_g76292;
				float3 break84_g76292 = VertexPos40_g76292;
				float3 appendResult81_g76292 = (float3(0.0 , break84_g76292.y , break84_g76292.z));
				half3 VertexPosOtherAxis82_g76292 = appendResult81_g76292;
				float3 WorldPosition_Shifted4972_g70059 = ( WorldPosition4027_g70059 - TVE_WorldOrigin );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76267 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76267 = ( localObjectPosition_UNITY_MATRIX_M14_g76267 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76267 = localObjectPosition_UNITY_MATRIX_M14_g76267;
				#endif
				half3 ObjectData20_g76269 = staticSwitch13_g76267;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76269 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76269 = WorldData19_g76269;
				#else
				float3 staticSwitch14_g76269 = ObjectData20_g76269;
				#endif
				float3 temp_output_114_0_g76267 = staticSwitch14_g76269;
				float3 vertexToFrag4543_g70059 = temp_output_114_0_g76267;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				float3 lerpResult4934_g70059 = lerp( WorldPosition_Shifted4972_g70059 , ObjectPosition_Shifted4976_g70059 , _MotionPosition_10);
				float3 Motion_10_Position4923_g70059 = lerpResult4934_g70059;
				half3 Input_Position419_g73828 = Motion_10_Position4923_g70059;
				float Input_MotionScale287_g73828 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g73828 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g73828 = (( Input_Position419_g73828 * Input_MotionScale287_g73828 * NoiseTex_Tilling735_g73828 * 0.0075 )).xz;
				float2 temp_output_447_0_g75464 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g70059 = temp_output_447_0_g75464;
				half2 Input_DirectionWS423_g73828 = Global_Wind_DirectionWS4464_g70059;
				float lerpResult128_g74632 = lerp( _TimeParameters.x , ( ( _TimeParameters.x * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g73828 = _MotionSpeed_10;
				half Input_MotionVariation284_g73828 = 0.0;
				half Input_GlobalMeshVariation569_g73828 = 0.0;
				float temp_output_630_0_g73828 = ( ( ( lerpResult128_g74632 * Input_MotionSpeed62_g73828 ) + ( Input_MotionVariation284_g73828 * Input_GlobalMeshVariation569_g73828 ) ) * 0.03 );
				float temp_output_607_0_g73828 = frac( temp_output_630_0_g73828 );
				float4 lerpResult590_g73828 = lerp( tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * temp_output_607_0_g73828 ) ), 0, 0.0) ) , tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * frac( ( temp_output_630_0_g73828 + 0.5 ) ) ) ), 0, 0.0) ) , ( abs( ( temp_output_607_0_g73828 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g73828 = lerpResult590_g73828;
				float2 temp_output_645_0_g73828 = ((Noise_Complex703_g73828).rg*2.0 + -1.0);
				float2 break650_g73828 = temp_output_645_0_g73828;
				float3 appendResult649_g73828 = (float3(break650_g73828.x , 0.0 , break650_g73828.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult649_g73828 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76296 = Global_Noise_OS4572_g70059;
				float2 break448_g75464 = temp_output_447_0_g75464;
				float3 appendResult452_g75464 = (float3(break448_g75464.x , 0.0 , break448_g75464.y));
				half2 Global_Wind_DirectionOS4658_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult452_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76296 = Global_Wind_DirectionOS4658_g70059;
				float temp_output_84_0_g70060 = _LayerMotionValue;
				float temp_output_19_0_g70064 = TVE_MotionUsage[(int)temp_output_84_0_g70060];
				float4 temp_output_91_19_g70060 = TVE_MotionCoords;
				half2 UV94_g70060 = ( (temp_output_91_19_g70060).zw + ( (temp_output_91_19_g70060).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70060 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, UV94_g70060,temp_output_84_0_g70060, 0.0 );
				float4 temp_output_17_0_g70064 = tex2DArrayNode50_g70060;
				float4 temp_output_112_19_g70060 = TVE_MotionParams;
				float4 temp_output_3_0_g70064 = temp_output_112_19_g70060;
				float4 ifLocalVar18_g70064 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70064 >= 0.5 )
				ifLocalVar18_g70064 = temp_output_17_0_g70064;
				else
				ifLocalVar18_g70064 = temp_output_3_0_g70064;
				float4 lerpResult22_g70064 = lerp( temp_output_3_0_g70064 , temp_output_17_0_g70064 , temp_output_19_0_g70064);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70064 = lerpResult22_g70064;
				#else
				float4 staticSwitch24_g70064 = ifLocalVar18_g70064;
				#endif
				half4 Global_Motion_Params4344_g70059 = staticSwitch24_g70064;
				float4 break322_g75464 = Global_Motion_Params4344_g70059;
				float lerpResult457_g75464 = lerp( break322_g75464.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g75464 = ( 1.0 - lerpResult457_g75464 );
				half Global_Wind_Power2223_g70059 = ( 1.0 - ( temp_output_459_0_g75464 * temp_output_459_0_g75464 ) );
				half Input_WindPower449_g76296 = Global_Wind_Power2223_g70059;
				float2 lerpResult516_g76296 = lerp( Input_Noise_DirectionOS487_g76296 , Input_Wind_DirectionOS458_g76296 , ( Input_WindPower449_g76296 * 0.6 ));
				half Mesh_Height1524_g70059 = saturate( ( VertexPosition3564_g70059.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76296 = Mesh_Height1524_g70059;
				half ObjectData20_g76297 = Input_MeshHeight388_g76296;
				half Input_BoundsHeight390_g76296 = 1.0;
				half WorldData19_g76297 = ( Input_MeshHeight388_g76296 * Input_MeshHeight388_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76297 = WorldData19_g76297;
				#else
				float staticSwitch14_g76297 = ObjectData20_g76297;
				#endif
				half Final_Motion10_Mask321_g76296 = ( staticSwitch14_g76297 * 2.0 );
				half Motion_10_Amplitude2258_g70059 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76296 = Motion_10_Amplitude2258_g70059;
				half Global_MotionValue640_g76296 = TVE_MotionValue_10;
				half2 Final_Bending631_g76296 = ( lerpResult516_g76296 * ( Final_Motion10_Mask321_g76296 * Input_BendingAmplitude376_g76296 * Input_WindPower449_g76296 * Input_WindPower449_g76296 * Global_MotionValue640_g76296 ) );
				float2 appendResult433_g75464 = (float2(break322_g75464.x , break322_g75464.y));
				float2 temp_output_436_0_g75464 = (appendResult433_g75464*2.0 + -1.0);
				float2 break441_g75464 = temp_output_436_0_g75464;
				float3 appendResult440_g75464 = (float3(break441_g75464.x , 0.0 , break441_g75464.y));
				half2 Global_React_DirectionOS4574_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult440_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76296 = Global_React_DirectionOS4574_g70059;
				float clampResult17_g76299 = clamp( Input_MeshHeight388_g76296 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76298 = 0.0;
				half Input_InteractionUseMask62_g76296 = 0.0;
				float temp_output_10_0_g76298 = ( Input_InteractionUseMask62_g76296 - temp_output_7_0_g76298 );
				half Final_InteractionRemap594_g76296 = saturate( ( ( clampResult17_g76299 - temp_output_7_0_g76298 ) / ( temp_output_10_0_g76298 + 0.0001 ) ) );
				half ObjectData20_g76300 = Final_InteractionRemap594_g76296;
				half WorldData19_g76300 = ( Final_InteractionRemap594_g76296 * Final_InteractionRemap594_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76300 = WorldData19_g76300;
				#else
				float staticSwitch14_g76300 = ObjectData20_g76300;
				#endif
				half Final_InteractionMask373_g76296 = ( staticSwitch14_g76300 * 2.0 );
				half Input_InteractionAmplitude58_g76296 = _InteractionAmplitude;
				half2 Final_Interaction632_g76296 = ( Input_React_DirectionOS358_g76296 * Final_InteractionMask373_g76296 * Input_InteractionAmplitude58_g76296 );
				half Global_React_Mask66_g70059 = ( break322_g75464.w * break322_g75464.w * break322_g75464.w * break322_g75464.w );
				float Input_InteractionGlobalMask330_g76296 = Global_React_Mask66_g70059;
				half Final_InteractionValue525_g76296 = saturate( ( Input_InteractionAmplitude58_g76296 * Input_InteractionGlobalMask330_g76296 ) );
				float2 lerpResult551_g76296 = lerp( Final_Bending631_g76296 , Final_Interaction632_g76296 , Final_InteractionValue525_g76296);
				float2 break364_g76296 = lerpResult551_g76296;
				float3 appendResult638_g76296 = (float3(break364_g76296.x , 0.0 , break364_g76296.y));
				half3 Motion_10_Interaction216_g70059 = appendResult638_g76296;
				half3 Angle44_g76291 = Motion_10_Interaction216_g70059;
				half Angle44_g76292 = (Angle44_g76291).z;
				half3 VertexPos40_g76293 = ( VertexPosRotationAxis50_g76292 + ( VertexPosOtherAxis82_g76292 * cos( Angle44_g76292 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76292 ) * sin( Angle44_g76292 ) ) );
				float3 appendResult74_g76293 = (float3(0.0 , 0.0 , VertexPos40_g76293.z));
				half3 VertexPosRotationAxis50_g76293 = appendResult74_g76293;
				float3 break84_g76293 = VertexPos40_g76293;
				float3 appendResult81_g76293 = (float3(break84_g76293.x , break84_g76293.y , 0.0));
				half3 VertexPosOtherAxis82_g76293 = appendResult81_g76293;
				half Angle44_g76293 = -(Angle44_g76291).x;
				float3 Vertex_Motion_Object833_g70059 = ( VertexPosRotationAxis50_g76293 + ( VertexPosOtherAxis82_g76293 * cos( Angle44_g76293 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76293 ) * sin( Angle44_g76293 ) ) );
				float temp_output_84_0_g70066 = _LayerVertexValue;
				float temp_output_19_0_g70070 = TVE_VertexUsage[(int)temp_output_84_0_g70066];
				float4 temp_output_94_19_g70066 = TVE_VertexCoords;
				half2 UV97_g70066 = ( (temp_output_94_19_g70066).zw + ( (temp_output_94_19_g70066).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70066 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, UV97_g70066,temp_output_84_0_g70066, 0.0 );
				float4 temp_output_17_0_g70070 = tex2DArrayNode50_g70066;
				float4 temp_output_111_19_g70066 = TVE_VertexParams;
				float4 temp_output_3_0_g70070 = temp_output_111_19_g70066;
				float4 ifLocalVar18_g70070 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70070 >= 0.5 )
				ifLocalVar18_g70070 = temp_output_17_0_g70070;
				else
				ifLocalVar18_g70070 = temp_output_3_0_g70070;
				float4 lerpResult22_g70070 = lerp( temp_output_3_0_g70070 , temp_output_17_0_g70070 , temp_output_19_0_g70070);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70070 = lerpResult22_g70070;
				#else
				float4 staticSwitch24_g70070 = ifLocalVar18_g70070;
				#endif
				half4 Global_Vertex_Params4413_g70059 = staticSwitch24_g70070;
				float4 break322_g75463 = Global_Vertex_Params4413_g70059;
				half Global_Vertex_Size174_g70059 = saturate( break322_g75463.w );
				float lerpResult346_g70059 = lerp( 1.0 , Global_Vertex_Size174_g70059 , _GlobalSize);
				float3 appendResult3480_g70059 = (float3(lerpResult346_g70059 , lerpResult346_g70059 , lerpResult346_g70059));
				half3 Vertex_Size1741_g70059 = appendResult3480_g70059;
				float3 Vertex_SizeFade1740_g70059 = half3(1,1,1);
				half IsInitialized3811_g70059 = _IsInitialized;
				float3 lerpResult16_g76287 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g70059 * Vertex_Size1741_g70059 * Vertex_SizeFade1740_g70059 ) - VertexPosition3564_g70059 ) * IsInitialized3811_g70059 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g70059 = ( lerpResult16_g76287 + _DisableSRPBatcher );
				
				outputPackedVaryingsMeshToPS.ase_texcoord2.xyz = vertexToFrag4543_g70059;
				outputPackedVaryingsMeshToPS.ase_texcoord3.xyz = ase_worldPos;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord2.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord3.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g70059;

				float2 uv = float2( 0.0, 0.0 );
				if( unity_MetaVertexControl.x )
				{
					uv = inputMesh.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				}
				else if( unity_MetaVertexControl.y )
				{
					uv = inputMesh.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}

				outputPackedVaryingsMeshToPS.positionCS = float4( uv * 2.0 - 1.0, inputMesh.vertex.z > 0 ? 1.0e-4 : 0.0, 1.0 );
				return outputPackedVaryingsMeshToPS;
			}

			float4 Frag( PackedVaryingsMeshToPS packedInput  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );

				//#ifdef LOD_FADE_CROSSFADE
				//float3 VC = GetWorldSpaceNormalizeViewDir(packedInput.interp00.xyz);
				//LODDitheringTransition(ComputeFadeMaskSeed(VC, packedInput.positionCS.xy), unity_LODFade.x);
				//#endif

				FragInputs input;
				ZERO_INITIALIZE( FragInputs, input );
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				SurfaceOutput o = (SurfaceOutput)0;

				o.Normal = float3( 0, 0, 1 );
				float4 clipPos = 0;
				float3 worldPos = 0;

				float4 output0 = 0;
				float4 output1 = 0;
				SphereImpostorFragment( o, clipPos, worldPos, packedInput.frameUVs99, packedInput.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g70059 = o.Albedo;
				half3 Main_Albedo3817_g70059 = ( Main_Albedo_Raw4295_g70059 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g70059 = float3(1,1,1);
				float4 break3589_g70059 = output0;
				half Main_Mask_Occlusion3712_g70059 = break3589_g70059.g;
				float3 lerpResult4779_g70059 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g70059);
				half3 Occlusion_Color4789_g70059 = lerpResult4779_g70059;
				half3 Main_Albedo_Tinted4791_g70059 = ( Main_Albedo3817_g70059 * Tint_Noise_Color5005_g70059 * Occlusion_Color4789_g70059 );
				float3 temp_output_3_0_g76289 = Main_Albedo_Tinted4791_g70059;
				float dotResult20_g76289 = dot( temp_output_3_0_g76289 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g70059 = dotResult20_g76289;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g70059).xxx;
				float temp_output_82_0_g70078 = _LayerColorsValue;
				float temp_output_19_0_g70082 = TVE_ColorsUsage[(int)temp_output_82_0_g70078];
				float4 temp_output_91_19_g70078 = TVE_ColorsCoords;
				float3 WorldPosition4027_g70059 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g70059 = packedInput.ase_texcoord2.xyz;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 lerpResult4478_g70059 = lerp( WorldPosition4027_g70059 , ObjectPosition4422_g70059 , _ColorsPositionMode);
				half2 UV94_g70078 = ( (temp_output_91_19_g70078).zw + ( (temp_output_91_19_g70078).xy * (lerpResult4478_g70059).xz ) );
				float4 tex2DArrayNode83_g70078 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, UV94_g70078,temp_output_82_0_g70078, 0.0 );
				float4 temp_output_17_0_g70082 = tex2DArrayNode83_g70078;
				float4 temp_output_92_86_g70078 = TVE_ColorsParams;
				float4 temp_output_3_0_g70082 = temp_output_92_86_g70078;
				float4 ifLocalVar18_g70082 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70082 >= 0.5 )
				ifLocalVar18_g70082 = temp_output_17_0_g70082;
				else
				ifLocalVar18_g70082 = temp_output_3_0_g70082;
				float4 lerpResult22_g70082 = lerp( temp_output_3_0_g70082 , temp_output_17_0_g70082 , temp_output_19_0_g70082);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70082 = lerpResult22_g70082;
				#else
				float4 staticSwitch24_g70082 = ifLocalVar18_g70082;
				#endif
				half4 Global_Colors_Params4558_g70059 = staticSwitch24_g70082;
				float4 temp_output_346_0_g75531 = Global_Colors_Params4558_g70059;
				half Global_Colors_A1701_g70059 = saturate( (temp_output_346_0_g75531).w );
				half Colors_Influence3998_g70059 = Global_Colors_A1701_g70059;
				float temp_output_4814_0_g70059 = ( 1.0 - Colors_Influence3998_g70059 );
				float3 lerpResult4004_g70059 = lerp( Main_Albedo_Tinted4791_g70059 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g70059 * temp_output_4814_0_g70059 ) ));
				half3 Global_Colors_RGB1700_g70059 = (temp_output_346_0_g75531).xyz;
				half3 Colors_RGB3856_g70059 = ( Global_Colors_RGB1700_g70059 * 4.594794 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g70059 = break3589_g70059.b;
				half Colors_Value4022_g70059 = ( Main_Mask_Remap3609_g70059 * _GlobalColors );
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				half3 Input_Position167_g76305 = ObjectPosition_Shifted4976_g70059;
				float dotResult156_g76305 = dot( (Input_Position167_g76305).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g70059 = _VertexDynamicMode;
				half Input_DynamicMode120_g76305 = Global_DynamicMode4535_g70059;
				float Postion_Random162_g76305 = ( sin( dotResult156_g76305 ) * ( 1.0 - Input_DynamicMode120_g76305 ) );
				half Main_Variation_Or_Metallic3607_g70059 = break3589_g70059.r;
				half Input_Variation124_g76305 = Main_Variation_Or_Metallic3607_g70059;
				half ObjectData20_g76307 = frac( ( Postion_Random162_g76305 + Input_Variation124_g76305 ) );
				half WorldData19_g76307 = Input_Variation124_g76305;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76307 = WorldData19_g76307;
				#else
				float staticSwitch14_g76307 = ObjectData20_g76307;
				#endif
				float temp_output_112_0_g76305 = staticSwitch14_g76307;
				float clampResult171_g76305 = clamp( temp_output_112_0_g76305 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g70059 = clampResult171_g76305;
				float lerpResult4092_g70059 = lerp( 1.0 , Global_VariationMesh4531_g70059 , _ColorsVariationValue);
				half Colors_Variation3999_g70059 = lerpResult4092_g70059;
				half Occlusion_Alpha4842_g70059 = _VertexOcclusionColor.a;
				float lerpResult5080_g70059 = lerp( Main_Mask_Occlusion3712_g70059 , ( 1.0 - Main_Mask_Occlusion3712_g70059 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g70059 = lerp( Occlusion_Alpha4842_g70059 , 1.0 , lerpResult5080_g70059);
				half Occlusion_Colors4856_g70059 = lerpResult5078_g70059;
				float3 temp_output_3_0_g76290 = ( Main_Albedo3817_g70059 * Tint_Noise_Color5005_g70059 );
				float dotResult20_g76290 = dot( temp_output_3_0_g76290 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g70059 = clamp( saturate( ( dotResult20_g76290 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g70059 = clampResult4925_g70059;
				float temp_output_7_0_g76280 = 0.1;
				float temp_output_10_0_g76280 = ( 0.2 - temp_output_7_0_g76280 );
				float lerpResult16_g76279 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g70059 * Colors_Variation3999_g70059 * Colors_Influence3998_g70059 * Occlusion_Colors4856_g70059 * Main_Albedo_Globals4847_g70059 ) - temp_output_7_0_g76280 ) / ( temp_output_10_0_g76280 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g70059 = lerp( Main_Albedo_Tinted4791_g70059 , ( lerpResult4004_g70059 * Colors_RGB3856_g70059 ) , lerpResult16_g76279);
				half3 Blend_Albedo_Colored3711_g70059 = lerpResult4007_g70059;
				half3 Global_OverlayColor1758_g70059 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g70072 = _LayerExtrasValue;
				float temp_output_19_0_g70076 = TVE_ExtrasUsage[(int)temp_output_84_0_g70072];
				float4 temp_output_93_19_g70072 = TVE_ExtrasCoords;
				float3 lerpResult4483_g70059 = lerp( WorldPosition4027_g70059 , ObjectPosition4422_g70059 , _ExtrasPositionMode);
				half2 UV96_g70072 = ( (temp_output_93_19_g70072).zw + ( (temp_output_93_19_g70072).xy * (lerpResult4483_g70059).xz ) );
				float4 tex2DArrayNode48_g70072 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g70072,temp_output_84_0_g70072, 0.0 );
				float4 temp_output_17_0_g70076 = tex2DArrayNode48_g70072;
				float4 temp_output_94_85_g70072 = TVE_ExtrasParams;
				float4 temp_output_3_0_g70076 = temp_output_94_85_g70072;
				float4 ifLocalVar18_g70076 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70076 >= 0.5 )
				ifLocalVar18_g70076 = temp_output_17_0_g70076;
				else
				ifLocalVar18_g70076 = temp_output_3_0_g70076;
				float4 lerpResult22_g70076 = lerp( temp_output_3_0_g70076 , temp_output_17_0_g70076 , temp_output_19_0_g70076);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70076 = lerpResult22_g70076;
				#else
				float4 staticSwitch24_g70076 = ifLocalVar18_g70076;
				#endif
				half4 Global_Extras_Params4559_g70059 = staticSwitch24_g70076;
				float4 break456_g76302 = Global_Extras_Params4559_g70059;
				half Global_Extras_Overlay156_g70059 = break456_g76302.z;
				float lerpResult3746_g70059 = lerp( 1.0 , Global_VariationMesh4531_g70059 , _OverlayVariationValue);
				half Overlay_Variation3739_g70059 = lerpResult3746_g70059;
				half Overlay_Value4803_g70059 = ( _GlobalOverlay * Global_Extras_Overlay156_g70059 * Overlay_Variation3739_g70059 );
				half3 World_Normal3638_g70059 = o.Normal;
				float lerpResult4683_g70059 = lerp( 1.0 , saturate( (World_Normal3638_g70059).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g70059 = lerpResult4683_g70059;
				half Overlay_Shading4874_g70059 = Main_Albedo_Globals4847_g70059;
				float lerpResult5086_g70059 = lerp( Main_Mask_Occlusion3712_g70059 , ( 1.0 - Main_Mask_Occlusion3712_g70059 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g70059 = lerp( Occlusion_Alpha4842_g70059 , 1.0 , lerpResult5086_g70059);
				half Occlusion_Overlay4860_g70059 = lerpResult5084_g70059;
				float temp_output_7_0_g76281 = 0.1;
				float temp_output_10_0_g76281 = ( 0.2 - temp_output_7_0_g76281 );
				half Overlay_Mask3762_g70059 = saturate( ( ( ( Overlay_Value4803_g70059 * Overlay_Projection4636_g70059 * Overlay_Shading4874_g70059 * Occlusion_Overlay4860_g70059 ) - temp_output_7_0_g76281 ) / ( temp_output_10_0_g76281 + 0.0001 ) ) );
				float3 lerpResult3875_g70059 = lerp( Blend_Albedo_Colored3711_g70059 , Global_OverlayColor1758_g70059 , Overlay_Mask3762_g70059);
				half3 Blend_Albedo_Overlay4100_g70059 = lerpResult3875_g70059;
				half Global_WetnessContrast4862_g70059 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g70059 = break456_g76302.y;
				half Wetnness_Value4824_g70059 = ( Global_Extras_Wetness305_g70059 * _GlobalWetness );
				float3 lerpResult4833_g70059 = lerp( Blend_Albedo_Overlay4100_g70059 , ( Blend_Albedo_Overlay4100_g70059 * Blend_Albedo_Overlay4100_g70059 ) , ( Global_WetnessContrast4862_g70059 * Wetnness_Value4824_g70059 ));
				half3 Blend_Albedo_Wetness4830_g70059 = lerpResult4833_g70059;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g70059 = _Vector12;
				float3 temp_output_4907_0_g70059 = ( Blend_Albedo_Wetness4830_g70059 * Tint_Highlight_Color4905_g70059 );
				half3 Subsurface_Color3656_g70059 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness4830_g70059 );
				half Global_Subsurface4111_g70059 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface4959_g70059 = TVE_OverlaySubsurface;
				float lerpResult4960_g70059 = lerp( 1.0 , Global_OverlaySubsurface4959_g70059 , Overlay_Value4803_g70059);
				half Overlay_Subsurface4962_g70059 = lerpResult4960_g70059;
				half Subsurface_Intensity3684_g70059 = ( _SubsurfaceValue * Global_Subsurface4111_g70059 * Overlay_Subsurface4962_g70059 );
				float lerpResult5069_g70059 = lerp( 1.0 , Main_Mask_Remap3609_g70059 , _SubsurfaceMaskValue);
				half Subsurface_Mask3666_g70059 = lerpResult5069_g70059;
				half3 MainLight_Direction4110_g70059 = TVE_MainLightDirection;
				float3 ase_worldPos = packedInput.ase_texcoord3.xyz;
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult3635_g70059 = normalize( ase_worldViewDir );
				float dotResult3631_g70059 = dot( -MainLight_Direction4110_g70059 , normalizeResult3635_g70059 );
				float saferPower3620_g70059 = abs( saturate( dotResult3631_g70059 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch3636_g70059 = 0.0;
				#else
				float staticSwitch3636_g70059 = ( pow( saferPower3620_g70059 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View3614_g70059 = staticSwitch3636_g70059;
				half3 Subsurface_Approximation3702_g70059 = ( Subsurface_Color3656_g70059 * Subsurface_Intensity3684_g70059 * Subsurface_Mask3666_g70059 * Mask_Subsurface_View3614_g70059 );
				half3 Blend_Albedo_Subsurface3874_g70059 = ( temp_output_4907_0_g70059 + Subsurface_Approximation3702_g70059 );
				half IsInitialized3811_g70059 = _IsInitialized;
				float3 lerpResult3815_g70059 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g70059 , IsInitialized3811_g70059);
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g70059 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g70059 = (output1).rgb;
				half Global_Extras_Emissive4408_g70059 = break456_g76302.x;
				float lerpResult4417_g70059 = lerp( 1.0 , Global_Extras_Emissive4408_g70059 , _GlobalEmissive);
				half Emissive_Value4941_g70059 = ( ( lerpResult4417_g70059 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g70059 = saturate( ( Emissive_Texture4942_g70059 + Emissive_Value4941_g70059 ) );
				float3 temp_output_3_0_g76301 = ( Emissive_Color4947_g70059 * Emissive_Mask5026_g70059 );
				float temp_output_15_0_g76301 = _emissive_intensity_value;
				float3 hdEmission22_g76301 = ASEGetEmissionHDRColor(temp_output_3_0_g76301,temp_output_15_0_g76301,_EmissiveExposureValue,GetInverseCurrentExposureMultiplier());
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g70059 = hdEmission22_g76301;
				#else
				float3 staticSwitch5070_g70059 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g70059 = staticSwitch5070_g70059;
				
				half Main_Mask_Smoothness3820_g70059 = break3589_g70059.a;
				half Main_Smoothness3838_g70059 = ( Main_Mask_Smoothness3820_g70059 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g70059 = ( 1.0 - Wetnness_Value4824_g70059 );
				half Blend_Smoothness_Wetness3898_g70059 = saturate( ( Main_Smoothness3838_g70059 + ( 1.0 - ( temp_output_4864_0_g70059 * temp_output_4864_0_g70059 ) ) ) );
				
				float temp_output_3577_0_g70059 = o.Alpha;
				float localCustomAlphaClipAlways4430_g70059 = ( temp_output_3577_0_g70059 );
				half Global_Extras_Alpha1033_g70059 = saturate( break456_g76302.w );
				float lerpResult4544_g70059 = lerp( 0.0 , Global_VariationMesh4531_g70059 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g70059 = lerpResult4544_g70059;
				float lerpResult4053_g70059 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g70059 - Global_Alpha_Variation4546_g70059 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g70059 = lerpResult4053_g70059;
				float Alpha4430_g70059 = Alpha_Composite4102_g70059;
				{
				clip(Alpha4430_g70059 - 0.1);
				}
				half Final_Alpha4955_g70059 = localCustomAlphaClipAlways4430_g70059;
				
				float lerpResult5053_g70059 = lerp( 1.0 , ( 1.0 - Subsurface_Mask3666_g70059 ) , _SubsurfaceThicknessMaskValue);
				half Subsurface_ThicknessValue5062_g70059 = ( lerpResult5053_g70059 * _SubsurfaceThicknessValue );
				half Subsurface_Thickness3650_g70059 = Subsurface_ThicknessValue5062_g70059;
				
				half Subsurface_Transmission4550_g70059 = ( Subsurface_Intensity3684_g70059 * Subsurface_Mask3666_g70059 );
				

				surfaceDescription.Albedo = lerpResult3815_g70059;
				o.Normal = World_Normal3638_g70059;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = Final_Emissive4365_g70059;
				surfaceDescription.Smoothness = Blend_Smoothness_Wetness3898_g70059;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = Final_Alpha4955_g70059;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = Subsurface_Thickness3650_g70059;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1,1,1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceDescription.TransmissionMask = Subsurface_Transmission4550_g70059;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = _SubsurfaceDiffusion;
				#endif
				
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1,0,0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				packedInput.positionCS.zw = clipPos.zw;
				float3 positionRWS = worldPos;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
				//input.worldToTangent = k_identity3x3;
				//#else
				input.tangentToWorld = k_identity3x3;
				//#endif

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS );

				SurfaceData surfaceData;
				BuiltinData builtinData;

				float3 normalizedWorldViewDir = GetWorldSpaceNormalizeViewDir( input.positionRWS );

				GetSurfaceAndBuiltinData( surfaceDescription,input, normalizedWorldViewDir, posInput, surfaceData, builtinData );

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData( input.positionSS.xy, surfaceData );
				LightTransportData lightTransportData = GetLightTransportData( surfaceData, builtinData, bsdfData );

				float4 res = float4( 0.0, 0.0, 0.0, 1.0 );
				if( unity_MetaFragmentControl.x )
				{
					res.rgb = clamp( pow( abs( lightTransportData.diffuseColor ), saturate( unity_OneOverOutputBoost ) ), 0, unity_MaxOutputValue );
				}

				if( unity_MetaFragmentControl.y )
				{
					res.rgb = lightTransportData.emissiveColor;
				}

				return res;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ColorMask 0

			HLSLPROGRAM
			#define _DISABLE_DECALS 1
			#define _DISABLE_SSR 1
			#define _MATERIAL_FEATURE_TRANSMISSION 1
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP

			#pragma vertex Vert
			#pragma fragment Frag

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Wind.hlsl"
			//#endif
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#define SHADERPASS SHADERPASS_SHADOWS
			#define USE_LEGACY_UNITY_MATRIX_VARIABLES

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#define T2W(var, index) var.worldToTangent[index]
			//#else
			#define T2W(var, index) var.tangentToWorld[index]
			//#endif

			#define ai_ObjectToWorld GetObjectToWorldMatrix()
			#define ai_WorldToObject GetWorldToObjectMatrix()
			#define AI_INV_TWO_PI  INV_TWO_PI
			#define AI_PI          PI
			#define AI_INV_PI      INV_PI
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_PLANT_SHADER
			#define TVE_IS_SUBSURFACE_SHADER


			struct AttributesMesh
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD10;
				float4 frameUVs99 : TEXCOORD0;
				float4 viewPos99 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;
			sampler2D _Albedo;
			sampler2D _Normals;
			sampler2D TVE_NoiseTex;
			float3 TVE_WorldOrigin;
			half TVE_NoiseTexTilling;
			half4 TVE_MotionParams;
			half4 TVE_TimeParams;
			float TVE_MotionUsage[10];
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_WindEditor;
			half TVE_MotionValue_10;
			float TVE_VertexUsage[10];
			TEXTURE2D_ARRAY(TVE_VertexTex);
			half4 TVE_VertexCoords;
			half4 TVE_VertexParams;
			half TVE_IsEnabled;
			half _DisableSRPBatcher;
			sampler2D _Mask;
			sampler2D _Emissive;
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			half4 TVE_ExtrasParams;
			CBUFFER_START( UnityPerMaterial )
			half4 _SubsurfaceColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			half4 _ImpostorColor;
			half4 _EmissiveColor;
			float4 _SubsurfaceDiffusion_Asset;
			float3 _AI_Offset;
			half _GlobalSize;
			half _LayerVertexValue;
			half _InteractionAmplitude;
			half _MotionAmplitude_10;
			half _LayerMotionValue;
			half _MotionSpeed_10;
			half _CategoryGlobal;
			half _LayerColorsValue;
			half _MotionPosition_10;
			float _AI_Clip;
			float _AI_ShadowView;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			half _MotionScale_10;
			half _ColorsPositionMode;
			half _GlobalColors;
			float _AI_ImpostorSize;
			half _GlobalAlpha;
			half _AlphaVariationValue;
			half _ImpostorSmoothnessValue;
			half _EmissiveExposureValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _SubsurfaceMaskValue;
			half _SubsurfaceValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _OverlayVariationValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _ColorsVariationValue;
			half _VertexDynamicMode;
			half _ColorsIntensityValue;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _IsCollected;
			half _IsIdentifier;
			half _HasOcclusion;
			half _IsTVEShader;
			float _SubsurfaceDiffusion;
			half _SpaceSubsurface;
			half _SpaceMotionGlobals;
			half _SpaceGlobalOptions;
			half _SpaceGlobalLocals;
			half _VertexPivotMode;
			half _RenderPriority;
			half _RenderQueue;
			half _CategoryOcclusion;
			half _SpaceGlobalLayers;
			half _IsVersion;
			half _CategorySizeFade;
			half _CategoryMotion;
			half _CategoryEmissive;
			half _IsSubsurfaceShader;
			float _IsPlantShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _ImpostorCat;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			half _SubsurfaceThicknessMaskValue;
			half _SubsurfaceScatteringValue;
			half _SubsurfaceShadowValue;
			half _SubsurfaceNormalValue;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceThicknessValue;
			CBUFFER_END


			inline void SphereImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 frameUVs, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float sizeX = _AI_FramesX;
				float sizeY = _AI_FramesY - 1; 
				float UVscale = _AI_ImpostorSize;
				float4 fractions = 1 / float4( sizeX, _AI_FramesY, sizeY, UVscale );
				float2 sizeFraction = fractions.xy;
				float axisSizeFraction = fractions.z;
				float fractionsUVscale = fractions.w;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float verticalAngle = frac( atan2( -objectCameraDirection.z, -objectCameraDirection.x ) * AI_INV_TWO_PI ) * sizeX + 0.5;
				float verticalDot = dot( objectCameraDirection, upVector );
				float upAngle = ( acos( -verticalDot ) * AI_INV_PI ) + axisSizeFraction * 0.5f;
				float yRot = sizeFraction.x * AI_PI * verticalDot * ( 2 * frac( verticalAngle ) - 1 );
				float2 uvExpansion = vertex.xy;
				float cosY = cos( yRot );
				float sinY = sin( yRot );
				float2 uvRotator = mul( uvExpansion, float2x2( cosY, -sinY, sinY, cosY ) );
				float3 billboard = objectHorizontalVector * uvRotator.x + objectVerticalVector * uvRotator.y + _AI_Offset.xyz;
				float2 relativeCoords = float2( floor( verticalAngle ), min( floor( upAngle * sizeY ), sizeY ) );
				float2 frameUV = ( ( uvExpansion * fractionsUVscale + 0.5 ) + relativeCoords ) * sizeFraction;
				frameUVs.xy = frameUV - uvOffset;
				frameUVs.zw = 0;
				viewPos.w = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( billboard ) );
				vertex.xyz = billboard;
				normal.xyz = objectCameraDirection;
			}
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			inline void SphereImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 frameUV, float4 viewPos, out float4 output0, out float4 output1 )
			{
				#if _USE_PARALLAX_ON
				float4 parallaxSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, -1) );
				frameUV.xy = ( ( 0.5 - parallaxSample.a ) * frameUV.zw ) + frameUV.xy;
				#endif
				float4 albedoSample = tex2Dbias( _Albedo, float4(frameUV.xy, 0, _AI_TextureBias) );
				o.Alpha = ( albedoSample.a - _AI_Clip );
				clip( o.Alpha );
				o.Albedo = albedoSample.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.MetalTangent = test1.b;
				#endif
				output0 = tex2Dbias( _Mask, float4(frameUV.xy, 0, _AI_TextureBias) );
				output1 = tex2Dbias( _Emissive, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 normalSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 remapNormal = normalSample * 2 - 1; 
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, remapNormal.xyz ) );
				o.Normal = worldNormal;
				#if defined(UNITY_PASS_SHADOWCASTER) // Standard RP fix for deferred path
				float depth = remapNormal.a * _AI_DepthSize * 0.4999 * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depth = remapNormal.a * _AI_DepthSize * 0.5 * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depth * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depth;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos.xyz, 1 ) );
				#if defined(UNITY_PASS_SHADOWCASTER) && !defined(SHADERPASS)
				#if UNITY_REVERSED_Z
				clipPos.z = min( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#else
				clipPos.z = max( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#endif
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
					surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
				#endif

				GetNormalWS( fragInputs, float3( 0.0, 0.0, 1.0 ), surfaceData.normalWS, float3( 1.0, 1.0, 1.0 ) );
				bentNormalWS = surfaceData.normalWS;

				surfaceData.geomNormalWS = T2W(fragInputs, 2);

				#ifdef _HAS_REFRACTION
					if (_EnableSSRefraction)
					{

						surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
						surfaceDescription.Alpha = 1.0;
					}
					else
					{
						surfaceData.ior = 1.0;
						surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
						surfaceData.atDistance = 1.0;
						surfaceData.transmittanceMask = 0.0;
						surfaceDescription.Alpha = 1.0;
					}
				#else
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
				#endif

					surfaceData.tangentWS = normalize(T2W(fragInputs, 0).xyz);    // The tangent is not normalize in worldToTangent for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
					surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
				#else
					surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
					surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, T2W(fragInputs, 2), surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
				#endif
			}

			void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				//#ifdef LOD_FADE_CROSSFADE
				//	uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx));
				//	LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
				//#endif

				#ifdef _ALPHATEST_ON
					DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif
				float3 bentNormalWS;
				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData, bentNormalWS);

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION <= 50702
					InitBuiltinData( surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.positionRWS, fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				#else
					InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				#endif

				builtinData.depthOffset = 0.0;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
					builtinData.distortion = surfaceDescription.Distortion;
					builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
					builtinData.distortion = float2(0.0, 0.0);
					builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID( inputMesh );
				UNITY_TRANSFER_INSTANCE_ID( inputMesh, outputPackedVaryingsMeshToPS );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(outputPackedVaryingsMeshToPS);

				SphereImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.frameUVs99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 worldPosOut99 = GetAbsolutePositionWS( mul( UNITY_MATRIX_I_V, float4( outputPackedVaryingsMeshToPS.viewPos99.xyz, 1.0 ) ).xyz );
				float3 WorldPosition4027_g70059 = worldPosOut99;
				float3 worldToObj4970_g70059 = mul( GetWorldToObjectMatrix(), float4( GetCameraRelativePositionWS(WorldPosition4027_g70059), 1 ) ).xyz;
				float3 VertexPosition3564_g70059 = worldToObj4970_g70059;
				half3 VertexPos40_g76291 = VertexPosition3564_g70059;
				half3 VertexPos40_g76292 = VertexPos40_g76291;
				float3 appendResult74_g76292 = (float3(VertexPos40_g76292.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76292 = appendResult74_g76292;
				float3 break84_g76292 = VertexPos40_g76292;
				float3 appendResult81_g76292 = (float3(0.0 , break84_g76292.y , break84_g76292.z));
				half3 VertexPosOtherAxis82_g76292 = appendResult81_g76292;
				float3 WorldPosition_Shifted4972_g70059 = ( WorldPosition4027_g70059 - TVE_WorldOrigin );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76267 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76267 = ( localObjectPosition_UNITY_MATRIX_M14_g76267 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76267 = localObjectPosition_UNITY_MATRIX_M14_g76267;
				#endif
				half3 ObjectData20_g76269 = staticSwitch13_g76267;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76269 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76269 = WorldData19_g76269;
				#else
				float3 staticSwitch14_g76269 = ObjectData20_g76269;
				#endif
				float3 temp_output_114_0_g76267 = staticSwitch14_g76269;
				float3 vertexToFrag4543_g70059 = temp_output_114_0_g76267;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				float3 lerpResult4934_g70059 = lerp( WorldPosition_Shifted4972_g70059 , ObjectPosition_Shifted4976_g70059 , _MotionPosition_10);
				float3 Motion_10_Position4923_g70059 = lerpResult4934_g70059;
				half3 Input_Position419_g73828 = Motion_10_Position4923_g70059;
				float Input_MotionScale287_g73828 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g73828 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g73828 = (( Input_Position419_g73828 * Input_MotionScale287_g73828 * NoiseTex_Tilling735_g73828 * 0.0075 )).xz;
				float2 temp_output_447_0_g75464 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g70059 = temp_output_447_0_g75464;
				half2 Input_DirectionWS423_g73828 = Global_Wind_DirectionWS4464_g70059;
				float lerpResult128_g74632 = lerp( _TimeParameters.x , ( ( _TimeParameters.x * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g73828 = _MotionSpeed_10;
				half Input_MotionVariation284_g73828 = 0.0;
				half Input_GlobalMeshVariation569_g73828 = 0.0;
				float temp_output_630_0_g73828 = ( ( ( lerpResult128_g74632 * Input_MotionSpeed62_g73828 ) + ( Input_MotionVariation284_g73828 * Input_GlobalMeshVariation569_g73828 ) ) * 0.03 );
				float temp_output_607_0_g73828 = frac( temp_output_630_0_g73828 );
				float4 lerpResult590_g73828 = lerp( tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * temp_output_607_0_g73828 ) ), 0, 0.0) ) , tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * frac( ( temp_output_630_0_g73828 + 0.5 ) ) ) ), 0, 0.0) ) , ( abs( ( temp_output_607_0_g73828 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g73828 = lerpResult590_g73828;
				float2 temp_output_645_0_g73828 = ((Noise_Complex703_g73828).rg*2.0 + -1.0);
				float2 break650_g73828 = temp_output_645_0_g73828;
				float3 appendResult649_g73828 = (float3(break650_g73828.x , 0.0 , break650_g73828.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult649_g73828 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76296 = Global_Noise_OS4572_g70059;
				float2 break448_g75464 = temp_output_447_0_g75464;
				float3 appendResult452_g75464 = (float3(break448_g75464.x , 0.0 , break448_g75464.y));
				half2 Global_Wind_DirectionOS4658_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult452_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76296 = Global_Wind_DirectionOS4658_g70059;
				float temp_output_84_0_g70060 = _LayerMotionValue;
				float temp_output_19_0_g70064 = TVE_MotionUsage[(int)temp_output_84_0_g70060];
				float4 temp_output_91_19_g70060 = TVE_MotionCoords;
				half2 UV94_g70060 = ( (temp_output_91_19_g70060).zw + ( (temp_output_91_19_g70060).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70060 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, UV94_g70060,temp_output_84_0_g70060, 0.0 );
				float4 temp_output_17_0_g70064 = tex2DArrayNode50_g70060;
				float4 temp_output_112_19_g70060 = TVE_MotionParams;
				float4 temp_output_3_0_g70064 = temp_output_112_19_g70060;
				float4 ifLocalVar18_g70064 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70064 >= 0.5 )
				ifLocalVar18_g70064 = temp_output_17_0_g70064;
				else
				ifLocalVar18_g70064 = temp_output_3_0_g70064;
				float4 lerpResult22_g70064 = lerp( temp_output_3_0_g70064 , temp_output_17_0_g70064 , temp_output_19_0_g70064);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70064 = lerpResult22_g70064;
				#else
				float4 staticSwitch24_g70064 = ifLocalVar18_g70064;
				#endif
				half4 Global_Motion_Params4344_g70059 = staticSwitch24_g70064;
				float4 break322_g75464 = Global_Motion_Params4344_g70059;
				float lerpResult457_g75464 = lerp( break322_g75464.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g75464 = ( 1.0 - lerpResult457_g75464 );
				half Global_Wind_Power2223_g70059 = ( 1.0 - ( temp_output_459_0_g75464 * temp_output_459_0_g75464 ) );
				half Input_WindPower449_g76296 = Global_Wind_Power2223_g70059;
				float2 lerpResult516_g76296 = lerp( Input_Noise_DirectionOS487_g76296 , Input_Wind_DirectionOS458_g76296 , ( Input_WindPower449_g76296 * 0.6 ));
				half Mesh_Height1524_g70059 = saturate( ( VertexPosition3564_g70059.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76296 = Mesh_Height1524_g70059;
				half ObjectData20_g76297 = Input_MeshHeight388_g76296;
				half Input_BoundsHeight390_g76296 = 1.0;
				half WorldData19_g76297 = ( Input_MeshHeight388_g76296 * Input_MeshHeight388_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76297 = WorldData19_g76297;
				#else
				float staticSwitch14_g76297 = ObjectData20_g76297;
				#endif
				half Final_Motion10_Mask321_g76296 = ( staticSwitch14_g76297 * 2.0 );
				half Motion_10_Amplitude2258_g70059 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76296 = Motion_10_Amplitude2258_g70059;
				half Global_MotionValue640_g76296 = TVE_MotionValue_10;
				half2 Final_Bending631_g76296 = ( lerpResult516_g76296 * ( Final_Motion10_Mask321_g76296 * Input_BendingAmplitude376_g76296 * Input_WindPower449_g76296 * Input_WindPower449_g76296 * Global_MotionValue640_g76296 ) );
				float2 appendResult433_g75464 = (float2(break322_g75464.x , break322_g75464.y));
				float2 temp_output_436_0_g75464 = (appendResult433_g75464*2.0 + -1.0);
				float2 break441_g75464 = temp_output_436_0_g75464;
				float3 appendResult440_g75464 = (float3(break441_g75464.x , 0.0 , break441_g75464.y));
				half2 Global_React_DirectionOS4574_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult440_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76296 = Global_React_DirectionOS4574_g70059;
				float clampResult17_g76299 = clamp( Input_MeshHeight388_g76296 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76298 = 0.0;
				half Input_InteractionUseMask62_g76296 = 0.0;
				float temp_output_10_0_g76298 = ( Input_InteractionUseMask62_g76296 - temp_output_7_0_g76298 );
				half Final_InteractionRemap594_g76296 = saturate( ( ( clampResult17_g76299 - temp_output_7_0_g76298 ) / ( temp_output_10_0_g76298 + 0.0001 ) ) );
				half ObjectData20_g76300 = Final_InteractionRemap594_g76296;
				half WorldData19_g76300 = ( Final_InteractionRemap594_g76296 * Final_InteractionRemap594_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76300 = WorldData19_g76300;
				#else
				float staticSwitch14_g76300 = ObjectData20_g76300;
				#endif
				half Final_InteractionMask373_g76296 = ( staticSwitch14_g76300 * 2.0 );
				half Input_InteractionAmplitude58_g76296 = _InteractionAmplitude;
				half2 Final_Interaction632_g76296 = ( Input_React_DirectionOS358_g76296 * Final_InteractionMask373_g76296 * Input_InteractionAmplitude58_g76296 );
				half Global_React_Mask66_g70059 = ( break322_g75464.w * break322_g75464.w * break322_g75464.w * break322_g75464.w );
				float Input_InteractionGlobalMask330_g76296 = Global_React_Mask66_g70059;
				half Final_InteractionValue525_g76296 = saturate( ( Input_InteractionAmplitude58_g76296 * Input_InteractionGlobalMask330_g76296 ) );
				float2 lerpResult551_g76296 = lerp( Final_Bending631_g76296 , Final_Interaction632_g76296 , Final_InteractionValue525_g76296);
				float2 break364_g76296 = lerpResult551_g76296;
				float3 appendResult638_g76296 = (float3(break364_g76296.x , 0.0 , break364_g76296.y));
				half3 Motion_10_Interaction216_g70059 = appendResult638_g76296;
				half3 Angle44_g76291 = Motion_10_Interaction216_g70059;
				half Angle44_g76292 = (Angle44_g76291).z;
				half3 VertexPos40_g76293 = ( VertexPosRotationAxis50_g76292 + ( VertexPosOtherAxis82_g76292 * cos( Angle44_g76292 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76292 ) * sin( Angle44_g76292 ) ) );
				float3 appendResult74_g76293 = (float3(0.0 , 0.0 , VertexPos40_g76293.z));
				half3 VertexPosRotationAxis50_g76293 = appendResult74_g76293;
				float3 break84_g76293 = VertexPos40_g76293;
				float3 appendResult81_g76293 = (float3(break84_g76293.x , break84_g76293.y , 0.0));
				half3 VertexPosOtherAxis82_g76293 = appendResult81_g76293;
				half Angle44_g76293 = -(Angle44_g76291).x;
				float3 Vertex_Motion_Object833_g70059 = ( VertexPosRotationAxis50_g76293 + ( VertexPosOtherAxis82_g76293 * cos( Angle44_g76293 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76293 ) * sin( Angle44_g76293 ) ) );
				float temp_output_84_0_g70066 = _LayerVertexValue;
				float temp_output_19_0_g70070 = TVE_VertexUsage[(int)temp_output_84_0_g70066];
				float4 temp_output_94_19_g70066 = TVE_VertexCoords;
				half2 UV97_g70066 = ( (temp_output_94_19_g70066).zw + ( (temp_output_94_19_g70066).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70066 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, UV97_g70066,temp_output_84_0_g70066, 0.0 );
				float4 temp_output_17_0_g70070 = tex2DArrayNode50_g70066;
				float4 temp_output_111_19_g70066 = TVE_VertexParams;
				float4 temp_output_3_0_g70070 = temp_output_111_19_g70066;
				float4 ifLocalVar18_g70070 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70070 >= 0.5 )
				ifLocalVar18_g70070 = temp_output_17_0_g70070;
				else
				ifLocalVar18_g70070 = temp_output_3_0_g70070;
				float4 lerpResult22_g70070 = lerp( temp_output_3_0_g70070 , temp_output_17_0_g70070 , temp_output_19_0_g70070);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70070 = lerpResult22_g70070;
				#else
				float4 staticSwitch24_g70070 = ifLocalVar18_g70070;
				#endif
				half4 Global_Vertex_Params4413_g70059 = staticSwitch24_g70070;
				float4 break322_g75463 = Global_Vertex_Params4413_g70059;
				half Global_Vertex_Size174_g70059 = saturate( break322_g75463.w );
				float lerpResult346_g70059 = lerp( 1.0 , Global_Vertex_Size174_g70059 , _GlobalSize);
				float3 appendResult3480_g70059 = (float3(lerpResult346_g70059 , lerpResult346_g70059 , lerpResult346_g70059));
				half3 Vertex_Size1741_g70059 = appendResult3480_g70059;
				float3 Vertex_SizeFade1740_g70059 = half3(1,1,1);
				half IsInitialized3811_g70059 = _IsInitialized;
				float3 lerpResult16_g76287 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g70059 * Vertex_Size1741_g70059 * Vertex_SizeFade1740_g70059 ) - VertexPosition3564_g70059 ) * IsInitialized3811_g70059 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g70059 = ( lerpResult16_g76287 + _DisableSRPBatcher );
				
				outputPackedVaryingsMeshToPS.ase_texcoord2.xyz = vertexToFrag4543_g70059;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord2.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g70059;

				float3 positionRWS = TransformObjectToWorld(inputMesh.vertex.xyz);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			void Frag(  PackedVaryingsMeshToPS packedInput
				#ifdef WRITE_NORMAL_BUFFER
				, out float4 outNormalBuffer : SV_Target0
					#ifdef WRITE_MSAA_DEPTH
				, out float1 depthColor : SV_Target1
					#endif
				#endif
				, out float outputDepth : SV_Depth
				
			)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				#ifdef LOD_FADE_CROSSFADE
				float3 VC = GetWorldSpaceNormalizeViewDir(packedInput.interp00.xyz);
				LODDitheringTransition(ComputeFadeMaskSeed(VC, packedInput.positionCS.xy), unity_LODFade.x);
				#endif

				FragInputs input;

				ZERO_INITIALIZE(FragInputs, input);
				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				SurfaceOutput o = (SurfaceOutput)0;

				o.Normal = float3( 0, 0, 1 );
				float4 clipPos = 0;
				float3 worldPos = 0;

				float4 output0 = 0;
				float4 output1 = 0;
				SphereImpostorFragment( o, clipPos, worldPos, packedInput.frameUVs99, packedInput.viewPos99, output0, output1 );
				float temp_output_3577_0_g70059 = o.Alpha;
				float localCustomAlphaClipAlways4430_g70059 = ( temp_output_3577_0_g70059 );
				float temp_output_84_0_g70072 = _LayerExtrasValue;
				float temp_output_19_0_g70076 = TVE_ExtrasUsage[(int)temp_output_84_0_g70072];
				float4 temp_output_93_19_g70072 = TVE_ExtrasCoords;
				float3 WorldPosition4027_g70059 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g70059 = packedInput.ase_texcoord2.xyz;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 lerpResult4483_g70059 = lerp( WorldPosition4027_g70059 , ObjectPosition4422_g70059 , _ExtrasPositionMode);
				half2 UV96_g70072 = ( (temp_output_93_19_g70072).zw + ( (temp_output_93_19_g70072).xy * (lerpResult4483_g70059).xz ) );
				float4 tex2DArrayNode48_g70072 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g70072,temp_output_84_0_g70072, 0.0 );
				float4 temp_output_17_0_g70076 = tex2DArrayNode48_g70072;
				float4 temp_output_94_85_g70072 = TVE_ExtrasParams;
				float4 temp_output_3_0_g70076 = temp_output_94_85_g70072;
				float4 ifLocalVar18_g70076 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70076 >= 0.5 )
				ifLocalVar18_g70076 = temp_output_17_0_g70076;
				else
				ifLocalVar18_g70076 = temp_output_3_0_g70076;
				float4 lerpResult22_g70076 = lerp( temp_output_3_0_g70076 , temp_output_17_0_g70076 , temp_output_19_0_g70076);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70076 = lerpResult22_g70076;
				#else
				float4 staticSwitch24_g70076 = ifLocalVar18_g70076;
				#endif
				half4 Global_Extras_Params4559_g70059 = staticSwitch24_g70076;
				float4 break456_g76302 = Global_Extras_Params4559_g70059;
				half Global_Extras_Alpha1033_g70059 = saturate( break456_g76302.w );
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				half3 Input_Position167_g76305 = ObjectPosition_Shifted4976_g70059;
				float dotResult156_g76305 = dot( (Input_Position167_g76305).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g70059 = _VertexDynamicMode;
				half Input_DynamicMode120_g76305 = Global_DynamicMode4535_g70059;
				float Postion_Random162_g76305 = ( sin( dotResult156_g76305 ) * ( 1.0 - Input_DynamicMode120_g76305 ) );
				float4 break3589_g70059 = output0;
				half Main_Variation_Or_Metallic3607_g70059 = break3589_g70059.r;
				half Input_Variation124_g76305 = Main_Variation_Or_Metallic3607_g70059;
				half ObjectData20_g76307 = frac( ( Postion_Random162_g76305 + Input_Variation124_g76305 ) );
				half WorldData19_g76307 = Input_Variation124_g76305;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76307 = WorldData19_g76307;
				#else
				float staticSwitch14_g76307 = ObjectData20_g76307;
				#endif
				float temp_output_112_0_g76305 = staticSwitch14_g76307;
				float clampResult171_g76305 = clamp( temp_output_112_0_g76305 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g70059 = clampResult171_g76305;
				float lerpResult4544_g70059 = lerp( 0.0 , Global_VariationMesh4531_g70059 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g70059 = lerpResult4544_g70059;
				float lerpResult4053_g70059 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g70059 - Global_Alpha_Variation4546_g70059 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g70059 = lerpResult4053_g70059;
				float Alpha4430_g70059 = Alpha_Composite4102_g70059;
				{
				clip(Alpha4430_g70059 - 0.1);
				}
				half Final_Alpha4955_g70059 = localCustomAlphaClipAlways4430_g70059;
				

				surfaceDescription.Alpha = Final_Alpha4955_g70059;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				packedInput.positionCS.zw = clipPos.zw;
				float3 positionRWS = worldPos;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
				//input.worldToTangent = k_identity3x3;
				//#else
				input.tangentToWorld = k_identity3x3;
				//#endif

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS );

				SurfaceData surfaceData;
				BuiltinData builtinData;

				float3 normalizedWorldViewDir = GetWorldSpaceNormalizeViewDir( input.positionRWS );

				GetSurfaceAndBuiltinData(surfaceDescription, input, normalizedWorldViewDir, posInput, surfaceData, builtinData);

				outputDepth = posInput.deviceDepth;

				#ifdef WRITE_NORMAL_BUFFER
					EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), posInput.positionSS, outNormalBuffer);
					#ifdef WRITE_MSAA_DEPTH
					depthColor = packedInput.positionCS.z;
					#endif
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			HLSLPROGRAM
			#define _DISABLE_DECALS 1
			#define _DISABLE_SSR 1
			#define _MATERIAL_FEATURE_TRANSMISSION 1
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP

			#pragma vertex Vert
			#pragma fragment Frag

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Wind.hlsl"
			//#endif
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#define SHADERPASS SHADERPASS_DEPTH_ONLY

			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile_fragment _ WRITE_MSAA_DEPTH
			#pragma multi_compile _ WRITE_DECAL_BUFFER WRITE_RENDERING_LAYER

			#define VARYINGS_NEED_POSITION_WS
			#define VARYINGS_NEED_TANGENT_TO_WORLD
			#define VARYINGS_NEED_TEXCOORD0
			#define VARYINGS_NEED_TEXCOORD1
			#define VARYINGS_NEED_TEXCOORD2
			#define VARYINGS_NEED_TEXCOORD3
			#define VARYINGS_NEED_COLOR

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#define T2W(var, index) var.worldToTangent[index]
			//#else
			#define T2W(var, index) var.tangentToWorld[index]
			//#endif

			#define ai_ObjectToWorld GetObjectToWorldMatrix()
			#define ai_WorldToObject GetWorldToObjectMatrix()
			#define AI_INV_TWO_PI  INV_TWO_PI
			#define AI_PI          PI
			#define AI_INV_PI      INV_PI
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_PLANT_SHADER
			#define TVE_IS_SUBSURFACE_SHADER


			struct AttributesMesh
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 uv3 : TEXCOORD3;
				float4 color : COLOR;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float4 interp05 : TEXCOORD5;
				float4 interp06 : TEXCOORD6;
				float4 interp07 : TEXCOORD7;
				float4 frameUVs99 : TEXCOORD8;
				float4 viewPos99 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;
			sampler2D _Albedo;
			sampler2D _Normals;
			sampler2D TVE_NoiseTex;
			float3 TVE_WorldOrigin;
			half TVE_NoiseTexTilling;
			half4 TVE_MotionParams;
			half4 TVE_TimeParams;
			float TVE_MotionUsage[10];
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_WindEditor;
			half TVE_MotionValue_10;
			float TVE_VertexUsage[10];
			TEXTURE2D_ARRAY(TVE_VertexTex);
			half4 TVE_VertexCoords;
			half4 TVE_VertexParams;
			half TVE_IsEnabled;
			half _DisableSRPBatcher;
			sampler2D _Mask;
			sampler2D _Emissive;
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			half4 TVE_ExtrasParams;
			CBUFFER_START( UnityPerMaterial )
			half4 _SubsurfaceColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			half4 _ImpostorColor;
			half4 _EmissiveColor;
			float4 _SubsurfaceDiffusion_Asset;
			float3 _AI_Offset;
			half _GlobalSize;
			half _LayerVertexValue;
			half _InteractionAmplitude;
			half _MotionAmplitude_10;
			half _LayerMotionValue;
			half _MotionSpeed_10;
			half _CategoryGlobal;
			half _LayerColorsValue;
			half _MotionPosition_10;
			float _AI_Clip;
			float _AI_ShadowView;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			half _MotionScale_10;
			half _ColorsPositionMode;
			half _GlobalColors;
			float _AI_ImpostorSize;
			half _GlobalAlpha;
			half _AlphaVariationValue;
			half _ImpostorSmoothnessValue;
			half _EmissiveExposureValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _SubsurfaceMaskValue;
			half _SubsurfaceValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _OverlayVariationValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _ColorsVariationValue;
			half _VertexDynamicMode;
			half _ColorsIntensityValue;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _IsCollected;
			half _IsIdentifier;
			half _HasOcclusion;
			half _IsTVEShader;
			float _SubsurfaceDiffusion;
			half _SpaceSubsurface;
			half _SpaceMotionGlobals;
			half _SpaceGlobalOptions;
			half _SpaceGlobalLocals;
			half _VertexPivotMode;
			half _RenderPriority;
			half _RenderQueue;
			half _CategoryOcclusion;
			half _SpaceGlobalLayers;
			half _IsVersion;
			half _CategorySizeFade;
			half _CategoryMotion;
			half _CategoryEmissive;
			half _IsSubsurfaceShader;
			float _IsPlantShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _ImpostorCat;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			half _SubsurfaceThicknessMaskValue;
			half _SubsurfaceScatteringValue;
			half _SubsurfaceShadowValue;
			half _SubsurfaceNormalValue;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceThicknessValue;
			CBUFFER_END


			inline void SphereImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 frameUVs, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float sizeX = _AI_FramesX;
				float sizeY = _AI_FramesY - 1; 
				float UVscale = _AI_ImpostorSize;
				float4 fractions = 1 / float4( sizeX, _AI_FramesY, sizeY, UVscale );
				float2 sizeFraction = fractions.xy;
				float axisSizeFraction = fractions.z;
				float fractionsUVscale = fractions.w;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float verticalAngle = frac( atan2( -objectCameraDirection.z, -objectCameraDirection.x ) * AI_INV_TWO_PI ) * sizeX + 0.5;
				float verticalDot = dot( objectCameraDirection, upVector );
				float upAngle = ( acos( -verticalDot ) * AI_INV_PI ) + axisSizeFraction * 0.5f;
				float yRot = sizeFraction.x * AI_PI * verticalDot * ( 2 * frac( verticalAngle ) - 1 );
				float2 uvExpansion = vertex.xy;
				float cosY = cos( yRot );
				float sinY = sin( yRot );
				float2 uvRotator = mul( uvExpansion, float2x2( cosY, -sinY, sinY, cosY ) );
				float3 billboard = objectHorizontalVector * uvRotator.x + objectVerticalVector * uvRotator.y + _AI_Offset.xyz;
				float2 relativeCoords = float2( floor( verticalAngle ), min( floor( upAngle * sizeY ), sizeY ) );
				float2 frameUV = ( ( uvExpansion * fractionsUVscale + 0.5 ) + relativeCoords ) * sizeFraction;
				frameUVs.xy = frameUV - uvOffset;
				frameUVs.zw = 0;
				viewPos.w = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( billboard ) );
				vertex.xyz = billboard;
				normal.xyz = objectCameraDirection;
			}
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			inline void SphereImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 frameUV, float4 viewPos, out float4 output0, out float4 output1 )
			{
				#if _USE_PARALLAX_ON
				float4 parallaxSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, -1) );
				frameUV.xy = ( ( 0.5 - parallaxSample.a ) * frameUV.zw ) + frameUV.xy;
				#endif
				float4 albedoSample = tex2Dbias( _Albedo, float4(frameUV.xy, 0, _AI_TextureBias) );
				o.Alpha = ( albedoSample.a - _AI_Clip );
				clip( o.Alpha );
				o.Albedo = albedoSample.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.MetalTangent = test1.b;
				#endif
				output0 = tex2Dbias( _Mask, float4(frameUV.xy, 0, _AI_TextureBias) );
				output1 = tex2Dbias( _Emissive, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 normalSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 remapNormal = normalSample * 2 - 1; 
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, remapNormal.xyz ) );
				o.Normal = worldNormal;
				#if defined(UNITY_PASS_SHADOWCASTER) // Standard RP fix for deferred path
				float depth = remapNormal.a * _AI_DepthSize * 0.4999 * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depth = remapNormal.a * _AI_DepthSize * 0.5 * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depth * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depth;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos.xyz, 1 ) );
				#if defined(UNITY_PASS_SHADOWCASTER) && !defined(SHADERPASS)
				#if UNITY_REVERSED_Z
				clipPos.z = min( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#else
				clipPos.z = max( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#endif
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
					surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
				#endif

				GetNormalWS( fragInputs, float3( 0.0, 0.0, 1.0 ), surfaceData.normalWS, float3( 1.0, 1.0, 1.0 ) );
				bentNormalWS = surfaceData.normalWS;

				surfaceData.geomNormalWS = T2W(fragInputs, 2);

				#ifdef _HAS_REFRACTION
					surfaceData.transmittanceMask = 1.0 - surfaceDescription.Alpha;
					surfaceDescription.Alpha = 1.0;
				#endif

					surfaceData.tangentWS = normalize(T2W(fragInputs, 0).xyz);    // The tangent is not normalize in worldToTangent for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
					surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
				#else
					surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
					surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, T2W(fragInputs, 2), surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				//#ifdef LOD_FADE_CROSSFADE
				//	uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx));
				//	LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
				//#endif

				#ifdef _ALPHATEST_ON
					DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

					float3 bentNormalWS;
					BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData, bentNormalWS);

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION <= 50702
					InitBuiltinData( surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.positionRWS, fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				#else
					InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				#endif

				builtinData.depthOffset = 0.0;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
					builtinData.distortion = surfaceDescription.Distortion;
					builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
					builtinData.distortion = float2(0.0, 0.0);
					builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID( inputMesh );
				UNITY_TRANSFER_INSTANCE_ID( inputMesh, outputPackedVaryingsMeshToPS );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				SphereImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.frameUVs99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 worldPosOut99 = GetAbsolutePositionWS( mul( UNITY_MATRIX_I_V, float4( outputPackedVaryingsMeshToPS.viewPos99.xyz, 1.0 ) ).xyz );
				float3 WorldPosition4027_g70059 = worldPosOut99;
				float3 worldToObj4970_g70059 = mul( GetWorldToObjectMatrix(), float4( GetCameraRelativePositionWS(WorldPosition4027_g70059), 1 ) ).xyz;
				float3 VertexPosition3564_g70059 = worldToObj4970_g70059;
				half3 VertexPos40_g76291 = VertexPosition3564_g70059;
				half3 VertexPos40_g76292 = VertexPos40_g76291;
				float3 appendResult74_g76292 = (float3(VertexPos40_g76292.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76292 = appendResult74_g76292;
				float3 break84_g76292 = VertexPos40_g76292;
				float3 appendResult81_g76292 = (float3(0.0 , break84_g76292.y , break84_g76292.z));
				half3 VertexPosOtherAxis82_g76292 = appendResult81_g76292;
				float3 WorldPosition_Shifted4972_g70059 = ( WorldPosition4027_g70059 - TVE_WorldOrigin );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76267 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76267 = ( localObjectPosition_UNITY_MATRIX_M14_g76267 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76267 = localObjectPosition_UNITY_MATRIX_M14_g76267;
				#endif
				half3 ObjectData20_g76269 = staticSwitch13_g76267;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76269 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76269 = WorldData19_g76269;
				#else
				float3 staticSwitch14_g76269 = ObjectData20_g76269;
				#endif
				float3 temp_output_114_0_g76267 = staticSwitch14_g76269;
				float3 vertexToFrag4543_g70059 = temp_output_114_0_g76267;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				float3 lerpResult4934_g70059 = lerp( WorldPosition_Shifted4972_g70059 , ObjectPosition_Shifted4976_g70059 , _MotionPosition_10);
				float3 Motion_10_Position4923_g70059 = lerpResult4934_g70059;
				half3 Input_Position419_g73828 = Motion_10_Position4923_g70059;
				float Input_MotionScale287_g73828 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g73828 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g73828 = (( Input_Position419_g73828 * Input_MotionScale287_g73828 * NoiseTex_Tilling735_g73828 * 0.0075 )).xz;
				float2 temp_output_447_0_g75464 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g70059 = temp_output_447_0_g75464;
				half2 Input_DirectionWS423_g73828 = Global_Wind_DirectionWS4464_g70059;
				float lerpResult128_g74632 = lerp( _TimeParameters.x , ( ( _TimeParameters.x * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g73828 = _MotionSpeed_10;
				half Input_MotionVariation284_g73828 = 0.0;
				half Input_GlobalMeshVariation569_g73828 = 0.0;
				float temp_output_630_0_g73828 = ( ( ( lerpResult128_g74632 * Input_MotionSpeed62_g73828 ) + ( Input_MotionVariation284_g73828 * Input_GlobalMeshVariation569_g73828 ) ) * 0.03 );
				float temp_output_607_0_g73828 = frac( temp_output_630_0_g73828 );
				float4 lerpResult590_g73828 = lerp( tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * temp_output_607_0_g73828 ) ), 0, 0.0) ) , tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * frac( ( temp_output_630_0_g73828 + 0.5 ) ) ) ), 0, 0.0) ) , ( abs( ( temp_output_607_0_g73828 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g73828 = lerpResult590_g73828;
				float2 temp_output_645_0_g73828 = ((Noise_Complex703_g73828).rg*2.0 + -1.0);
				float2 break650_g73828 = temp_output_645_0_g73828;
				float3 appendResult649_g73828 = (float3(break650_g73828.x , 0.0 , break650_g73828.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult649_g73828 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76296 = Global_Noise_OS4572_g70059;
				float2 break448_g75464 = temp_output_447_0_g75464;
				float3 appendResult452_g75464 = (float3(break448_g75464.x , 0.0 , break448_g75464.y));
				half2 Global_Wind_DirectionOS4658_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult452_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76296 = Global_Wind_DirectionOS4658_g70059;
				float temp_output_84_0_g70060 = _LayerMotionValue;
				float temp_output_19_0_g70064 = TVE_MotionUsage[(int)temp_output_84_0_g70060];
				float4 temp_output_91_19_g70060 = TVE_MotionCoords;
				half2 UV94_g70060 = ( (temp_output_91_19_g70060).zw + ( (temp_output_91_19_g70060).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70060 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, UV94_g70060,temp_output_84_0_g70060, 0.0 );
				float4 temp_output_17_0_g70064 = tex2DArrayNode50_g70060;
				float4 temp_output_112_19_g70060 = TVE_MotionParams;
				float4 temp_output_3_0_g70064 = temp_output_112_19_g70060;
				float4 ifLocalVar18_g70064 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70064 >= 0.5 )
				ifLocalVar18_g70064 = temp_output_17_0_g70064;
				else
				ifLocalVar18_g70064 = temp_output_3_0_g70064;
				float4 lerpResult22_g70064 = lerp( temp_output_3_0_g70064 , temp_output_17_0_g70064 , temp_output_19_0_g70064);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70064 = lerpResult22_g70064;
				#else
				float4 staticSwitch24_g70064 = ifLocalVar18_g70064;
				#endif
				half4 Global_Motion_Params4344_g70059 = staticSwitch24_g70064;
				float4 break322_g75464 = Global_Motion_Params4344_g70059;
				float lerpResult457_g75464 = lerp( break322_g75464.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g75464 = ( 1.0 - lerpResult457_g75464 );
				half Global_Wind_Power2223_g70059 = ( 1.0 - ( temp_output_459_0_g75464 * temp_output_459_0_g75464 ) );
				half Input_WindPower449_g76296 = Global_Wind_Power2223_g70059;
				float2 lerpResult516_g76296 = lerp( Input_Noise_DirectionOS487_g76296 , Input_Wind_DirectionOS458_g76296 , ( Input_WindPower449_g76296 * 0.6 ));
				half Mesh_Height1524_g70059 = saturate( ( VertexPosition3564_g70059.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76296 = Mesh_Height1524_g70059;
				half ObjectData20_g76297 = Input_MeshHeight388_g76296;
				half Input_BoundsHeight390_g76296 = 1.0;
				half WorldData19_g76297 = ( Input_MeshHeight388_g76296 * Input_MeshHeight388_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76297 = WorldData19_g76297;
				#else
				float staticSwitch14_g76297 = ObjectData20_g76297;
				#endif
				half Final_Motion10_Mask321_g76296 = ( staticSwitch14_g76297 * 2.0 );
				half Motion_10_Amplitude2258_g70059 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76296 = Motion_10_Amplitude2258_g70059;
				half Global_MotionValue640_g76296 = TVE_MotionValue_10;
				half2 Final_Bending631_g76296 = ( lerpResult516_g76296 * ( Final_Motion10_Mask321_g76296 * Input_BendingAmplitude376_g76296 * Input_WindPower449_g76296 * Input_WindPower449_g76296 * Global_MotionValue640_g76296 ) );
				float2 appendResult433_g75464 = (float2(break322_g75464.x , break322_g75464.y));
				float2 temp_output_436_0_g75464 = (appendResult433_g75464*2.0 + -1.0);
				float2 break441_g75464 = temp_output_436_0_g75464;
				float3 appendResult440_g75464 = (float3(break441_g75464.x , 0.0 , break441_g75464.y));
				half2 Global_React_DirectionOS4574_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult440_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76296 = Global_React_DirectionOS4574_g70059;
				float clampResult17_g76299 = clamp( Input_MeshHeight388_g76296 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76298 = 0.0;
				half Input_InteractionUseMask62_g76296 = 0.0;
				float temp_output_10_0_g76298 = ( Input_InteractionUseMask62_g76296 - temp_output_7_0_g76298 );
				half Final_InteractionRemap594_g76296 = saturate( ( ( clampResult17_g76299 - temp_output_7_0_g76298 ) / ( temp_output_10_0_g76298 + 0.0001 ) ) );
				half ObjectData20_g76300 = Final_InteractionRemap594_g76296;
				half WorldData19_g76300 = ( Final_InteractionRemap594_g76296 * Final_InteractionRemap594_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76300 = WorldData19_g76300;
				#else
				float staticSwitch14_g76300 = ObjectData20_g76300;
				#endif
				half Final_InteractionMask373_g76296 = ( staticSwitch14_g76300 * 2.0 );
				half Input_InteractionAmplitude58_g76296 = _InteractionAmplitude;
				half2 Final_Interaction632_g76296 = ( Input_React_DirectionOS358_g76296 * Final_InteractionMask373_g76296 * Input_InteractionAmplitude58_g76296 );
				half Global_React_Mask66_g70059 = ( break322_g75464.w * break322_g75464.w * break322_g75464.w * break322_g75464.w );
				float Input_InteractionGlobalMask330_g76296 = Global_React_Mask66_g70059;
				half Final_InteractionValue525_g76296 = saturate( ( Input_InteractionAmplitude58_g76296 * Input_InteractionGlobalMask330_g76296 ) );
				float2 lerpResult551_g76296 = lerp( Final_Bending631_g76296 , Final_Interaction632_g76296 , Final_InteractionValue525_g76296);
				float2 break364_g76296 = lerpResult551_g76296;
				float3 appendResult638_g76296 = (float3(break364_g76296.x , 0.0 , break364_g76296.y));
				half3 Motion_10_Interaction216_g70059 = appendResult638_g76296;
				half3 Angle44_g76291 = Motion_10_Interaction216_g70059;
				half Angle44_g76292 = (Angle44_g76291).z;
				half3 VertexPos40_g76293 = ( VertexPosRotationAxis50_g76292 + ( VertexPosOtherAxis82_g76292 * cos( Angle44_g76292 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76292 ) * sin( Angle44_g76292 ) ) );
				float3 appendResult74_g76293 = (float3(0.0 , 0.0 , VertexPos40_g76293.z));
				half3 VertexPosRotationAxis50_g76293 = appendResult74_g76293;
				float3 break84_g76293 = VertexPos40_g76293;
				float3 appendResult81_g76293 = (float3(break84_g76293.x , break84_g76293.y , 0.0));
				half3 VertexPosOtherAxis82_g76293 = appendResult81_g76293;
				half Angle44_g76293 = -(Angle44_g76291).x;
				float3 Vertex_Motion_Object833_g70059 = ( VertexPosRotationAxis50_g76293 + ( VertexPosOtherAxis82_g76293 * cos( Angle44_g76293 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76293 ) * sin( Angle44_g76293 ) ) );
				float temp_output_84_0_g70066 = _LayerVertexValue;
				float temp_output_19_0_g70070 = TVE_VertexUsage[(int)temp_output_84_0_g70066];
				float4 temp_output_94_19_g70066 = TVE_VertexCoords;
				half2 UV97_g70066 = ( (temp_output_94_19_g70066).zw + ( (temp_output_94_19_g70066).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70066 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, UV97_g70066,temp_output_84_0_g70066, 0.0 );
				float4 temp_output_17_0_g70070 = tex2DArrayNode50_g70066;
				float4 temp_output_111_19_g70066 = TVE_VertexParams;
				float4 temp_output_3_0_g70070 = temp_output_111_19_g70066;
				float4 ifLocalVar18_g70070 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70070 >= 0.5 )
				ifLocalVar18_g70070 = temp_output_17_0_g70070;
				else
				ifLocalVar18_g70070 = temp_output_3_0_g70070;
				float4 lerpResult22_g70070 = lerp( temp_output_3_0_g70070 , temp_output_17_0_g70070 , temp_output_19_0_g70070);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70070 = lerpResult22_g70070;
				#else
				float4 staticSwitch24_g70070 = ifLocalVar18_g70070;
				#endif
				half4 Global_Vertex_Params4413_g70059 = staticSwitch24_g70070;
				float4 break322_g75463 = Global_Vertex_Params4413_g70059;
				half Global_Vertex_Size174_g70059 = saturate( break322_g75463.w );
				float lerpResult346_g70059 = lerp( 1.0 , Global_Vertex_Size174_g70059 , _GlobalSize);
				float3 appendResult3480_g70059 = (float3(lerpResult346_g70059 , lerpResult346_g70059 , lerpResult346_g70059));
				half3 Vertex_Size1741_g70059 = appendResult3480_g70059;
				float3 Vertex_SizeFade1740_g70059 = half3(1,1,1);
				half IsInitialized3811_g70059 = _IsInitialized;
				float3 lerpResult16_g76287 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g70059 * Vertex_Size1741_g70059 * Vertex_SizeFade1740_g70059 ) - VertexPosition3564_g70059 ) * IsInitialized3811_g70059 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g70059 = ( lerpResult16_g76287 + _DisableSRPBatcher );
				
				outputPackedVaryingsMeshToPS.ase_texcoord10.xyz = vertexToFrag4543_g70059;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord10.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g70059;

				float3 positionRWS = TransformObjectToWorld( inputMesh.vertex.xyz );
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normal);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangent.xyz), inputMesh.tangent.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.texcoord;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp05.xyzw = inputMesh.uv2;
				outputPackedVaryingsMeshToPS.interp06.xyzw = inputMesh.uv3;
				outputPackedVaryingsMeshToPS.interp07.xyzw = inputMesh.color;

				return outputPackedVaryingsMeshToPS;
			}

			void Frag(  PackedVaryingsMeshToPS packedInput
				#ifdef WRITE_NORMAL_BUFFER
				, out float4 outNormalBuffer : SV_Target0
					#ifdef WRITE_MSAA_DEPTH
				, out float1 depthColor : SV_Target1
					#endif
				#endif
				, out float outputDepth : SV_Depth
				
			)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				#ifdef LOD_FADE_CROSSFADE
				float3 VC = GetWorldSpaceNormalizeViewDir(packedInput.interp00.xyz);
				LODDitheringTransition(ComputeFadeMaskSeed(VC, packedInput.positionCS.xy), unity_LODFade.x);
				#endif

				FragInputs input;

				ZERO_INITIALIZE(FragInputs, input);
				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				SurfaceOutput o = (SurfaceOutput)0;

				o.Normal = float3( 0, 0, 1 );
				float4 clipPos = 0;
				float3 worldPos = 0;

				float4 output0 = 0;
				float4 output1 = 0;
				SphereImpostorFragment( o, clipPos, worldPos, packedInput.frameUVs99, packedInput.viewPos99, output0, output1 );
				float4 break3589_g70059 = output0;
				half Main_Mask_Smoothness3820_g70059 = break3589_g70059.a;
				half Main_Smoothness3838_g70059 = ( Main_Mask_Smoothness3820_g70059 * _ImpostorSmoothnessValue );
				float temp_output_84_0_g70072 = _LayerExtrasValue;
				float temp_output_19_0_g70076 = TVE_ExtrasUsage[(int)temp_output_84_0_g70072];
				float4 temp_output_93_19_g70072 = TVE_ExtrasCoords;
				float3 WorldPosition4027_g70059 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g70059 = packedInput.ase_texcoord10.xyz;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 lerpResult4483_g70059 = lerp( WorldPosition4027_g70059 , ObjectPosition4422_g70059 , _ExtrasPositionMode);
				half2 UV96_g70072 = ( (temp_output_93_19_g70072).zw + ( (temp_output_93_19_g70072).xy * (lerpResult4483_g70059).xz ) );
				float4 tex2DArrayNode48_g70072 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g70072,temp_output_84_0_g70072, 0.0 );
				float4 temp_output_17_0_g70076 = tex2DArrayNode48_g70072;
				float4 temp_output_94_85_g70072 = TVE_ExtrasParams;
				float4 temp_output_3_0_g70076 = temp_output_94_85_g70072;
				float4 ifLocalVar18_g70076 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70076 >= 0.5 )
				ifLocalVar18_g70076 = temp_output_17_0_g70076;
				else
				ifLocalVar18_g70076 = temp_output_3_0_g70076;
				float4 lerpResult22_g70076 = lerp( temp_output_3_0_g70076 , temp_output_17_0_g70076 , temp_output_19_0_g70076);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70076 = lerpResult22_g70076;
				#else
				float4 staticSwitch24_g70076 = ifLocalVar18_g70076;
				#endif
				half4 Global_Extras_Params4559_g70059 = staticSwitch24_g70076;
				float4 break456_g76302 = Global_Extras_Params4559_g70059;
				half Global_Extras_Wetness305_g70059 = break456_g76302.y;
				half Wetnness_Value4824_g70059 = ( Global_Extras_Wetness305_g70059 * _GlobalWetness );
				float temp_output_4864_0_g70059 = ( 1.0 - Wetnness_Value4824_g70059 );
				half Blend_Smoothness_Wetness3898_g70059 = saturate( ( Main_Smoothness3838_g70059 + ( 1.0 - ( temp_output_4864_0_g70059 * temp_output_4864_0_g70059 ) ) ) );
				
				float temp_output_3577_0_g70059 = o.Alpha;
				float localCustomAlphaClipAlways4430_g70059 = ( temp_output_3577_0_g70059 );
				half Global_Extras_Alpha1033_g70059 = saturate( break456_g76302.w );
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				half3 Input_Position167_g76305 = ObjectPosition_Shifted4976_g70059;
				float dotResult156_g76305 = dot( (Input_Position167_g76305).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g70059 = _VertexDynamicMode;
				half Input_DynamicMode120_g76305 = Global_DynamicMode4535_g70059;
				float Postion_Random162_g76305 = ( sin( dotResult156_g76305 ) * ( 1.0 - Input_DynamicMode120_g76305 ) );
				half Main_Variation_Or_Metallic3607_g70059 = break3589_g70059.r;
				half Input_Variation124_g76305 = Main_Variation_Or_Metallic3607_g70059;
				half ObjectData20_g76307 = frac( ( Postion_Random162_g76305 + Input_Variation124_g76305 ) );
				half WorldData19_g76307 = Input_Variation124_g76305;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76307 = WorldData19_g76307;
				#else
				float staticSwitch14_g76307 = ObjectData20_g76307;
				#endif
				float temp_output_112_0_g76305 = staticSwitch14_g76307;
				float clampResult171_g76305 = clamp( temp_output_112_0_g76305 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g70059 = clampResult171_g76305;
				float lerpResult4544_g70059 = lerp( 0.0 , Global_VariationMesh4531_g70059 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g70059 = lerpResult4544_g70059;
				float lerpResult4053_g70059 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g70059 - Global_Alpha_Variation4546_g70059 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g70059 = lerpResult4053_g70059;
				float Alpha4430_g70059 = Alpha_Composite4102_g70059;
				{
				clip(Alpha4430_g70059 - 0.1);
				}
				half Final_Alpha4955_g70059 = localCustomAlphaClipAlways4430_g70059;
				
				surfaceDescription.Smoothness = Blend_Smoothness_Wetness3898_g70059;
				surfaceDescription.Alpha = Final_Alpha4955_g70059;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				packedInput.positionCS.zw = clipPos.zw;
				float3 positionRWS = worldPos;
				float3 normalWS = o.Normal;
				float4 tangentWS = packedInput.interp02.xyzw;
				float4 texCoord0 = packedInput.interp03.xyzw;
				float4 texCoord1 = packedInput.interp04.xyzw;
				float4 texCoord2 = packedInput.interp05.xyzw;
				float4 texCoord3 = packedInput.interp06.xyzw;
				float4 vertexColor = packedInput.interp07.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
				//input.worldToTangent = BuildWorldToTangent( tangentWS, normalWS );
				//#else
				input.tangentToWorld = BuildTangentToWorld( tangentWS, normalWS );
				//#endif
				input.texCoord0 = texCoord0;
				input.texCoord1 = texCoord1;
				input.texCoord2 = texCoord2;
				input.texCoord3 = texCoord3;
				input.color = vertexColor;

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS );

				float3 normalizedWorldViewDir = GetWorldSpaceNormalizeViewDir( input.positionRWS );

				SurfaceData surfaceData;
				BuiltinData builtinData;

				GetSurfaceAndBuiltinData(surfaceDescription, input, normalizedWorldViewDir, posInput, surfaceData, builtinData);

				outputDepth = posInput.deviceDepth;

				#ifdef WRITE_NORMAL_BUFFER
					EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), posInput.positionSS, outNormalBuffer);
					#ifdef WRITE_MSAA_DEPTH
					depthColor = packedInput.positionCS.z;
					#endif
				#endif
			}
			ENDHLSL
		}

		
		Pass
        {
			
			Name "Forward"
			Tags { "LightMode"="Forward" }
			Stencil
			{
				Ref 10
				WriteMask 14
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			ColorMask [_ColorMaskTransparentVelOne] 1
			ColorMask [_ColorMaskTransparentVelTwo] 2

			HLSLPROGRAM

			#define _DISABLE_DECALS 1
			#define _DISABLE_SSR 1
			#define _MATERIAL_FEATURE_TRANSMISSION 1
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP


			#pragma vertex Vert
			#pragma fragment Frag



			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
			//#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Wind.hlsl"
			//#endif
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#define SHADERPASS SHADERPASS_FORWARD

			//#pragma multi_compile_fragment _ SHADOWS_SHADOWMASK
	        #pragma multi_compile_fragment PUNCTUAL_SHADOW_LOW PUNCTUAL_SHADOW_MEDIUM PUNCTUAL_SHADOW_HIGH
	        #pragma multi_compile_fragment DIRECTIONAL_SHADOW_LOW DIRECTIONAL_SHADOW_MEDIUM DIRECTIONAL_SHADOW_HIGH
            #pragma multi_compile_fragment AREA_SHADOW_MEDIUM AREA_SHADOW_HIGH
			#pragma multi_compile_fragment _ PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
            #pragma multi_compile_fragment SCREEN_SPACE_SHADOWS_OFF SCREEN_SPACE_SHADOWS_ON
            #pragma multi_compile_fragment USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST
			//#pragma multi_compile _ DEBUG_DISPLAY
			//#pragma multi_compile _ LIGHTMAP_ON
			//#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			//#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			//#pragma multi_compile_fragment DECALS_OFF DECALS_3RT DECALS_4RT
			//#pragma multi_compile_fragment _ DECAL_SURFACE_GRADIENT

			#ifndef SHADER_STAGE_FRAGMENT
			#define SHADOW_LOW
			#define USE_FPTL_LIGHTLIST
			#endif

			#define VARYINGS_NEED_POSITION_WS
			#define VARYINGS_NEED_TANGENT_TO_WORLD
			#define VARYINGS_NEED_TEXCOORD1
			#define VARYINGS_NEED_TEXCOORD2

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"

			#define HAS_LIGHTLOOP

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			// Setup for Fog Enabled to apply in sky refletions in LightLoopDef.hlsl
			#define APPLY_FOG_ON_SKY_REFLECTIONS

			#define T2W(var, index) var.tangentToWorld[index]

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/CommonLighting.hlsl"
			#define ai_ObjectToWorld GetObjectToWorldMatrix()
			#define ai_WorldToObject GetWorldToObjectMatrix()
			#define AI_INV_TWO_PI  INV_TWO_PI
			#define AI_PI          PI
			#define AI_INV_PI      INV_PI
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_PLANT_SHADER
			#define TVE_IS_SUBSURFACE_SHADER


			struct AttributesMesh
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float4 interp05 : TEXCOORD5;
				float4 frameUVs99 : TEXCOORD6;
				float4 viewPos99 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;
			sampler2D _Albedo;
			sampler2D _Normals;
			sampler2D TVE_NoiseTex;
			float3 TVE_WorldOrigin;
			half TVE_NoiseTexTilling;
			half4 TVE_MotionParams;
			half4 TVE_TimeParams;
			float TVE_MotionUsage[10];
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_WindEditor;
			half TVE_MotionValue_10;
			float TVE_VertexUsage[10];
			TEXTURE2D_ARRAY(TVE_VertexTex);
			half4 TVE_VertexCoords;
			half4 TVE_VertexParams;
			half TVE_IsEnabled;
			half _DisableSRPBatcher;
			sampler2D _Mask;
			sampler2D _Emissive;
			float TVE_ColorsUsage[10];
			TEXTURE2D_ARRAY(TVE_ColorsTex);
			half4 TVE_ColorsCoords;
			half4 TVE_ColorsParams;
			half4 TVE_OverlayColor;
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			half4 TVE_ExtrasParams;
			half TVE_WetnessContrast;
			half TVE_SubsurfaceValue;
			half TVE_OverlaySubsurface;
			half3 TVE_MainLightDirection;
			CBUFFER_START( UnityPerMaterial )
			half4 _SubsurfaceColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			half4 _ImpostorColor;
			half4 _EmissiveColor;
			float4 _SubsurfaceDiffusion_Asset;
			float3 _AI_Offset;
			half _GlobalSize;
			half _LayerVertexValue;
			half _InteractionAmplitude;
			half _MotionAmplitude_10;
			half _LayerMotionValue;
			half _MotionSpeed_10;
			half _CategoryGlobal;
			half _LayerColorsValue;
			half _MotionPosition_10;
			float _AI_Clip;
			float _AI_ShadowView;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			half _MotionScale_10;
			half _ColorsPositionMode;
			half _GlobalColors;
			float _AI_ImpostorSize;
			half _GlobalAlpha;
			half _AlphaVariationValue;
			half _ImpostorSmoothnessValue;
			half _EmissiveExposureValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _SubsurfaceMaskValue;
			half _SubsurfaceValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _OverlayVariationValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _ColorsVariationValue;
			half _VertexDynamicMode;
			half _ColorsIntensityValue;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _IsCollected;
			half _IsIdentifier;
			half _HasOcclusion;
			half _IsTVEShader;
			float _SubsurfaceDiffusion;
			half _SpaceSubsurface;
			half _SpaceMotionGlobals;
			half _SpaceGlobalOptions;
			half _SpaceGlobalLocals;
			half _VertexPivotMode;
			half _RenderPriority;
			half _RenderQueue;
			half _CategoryOcclusion;
			half _SpaceGlobalLayers;
			half _IsVersion;
			half _CategorySizeFade;
			half _CategoryMotion;
			half _CategoryEmissive;
			half _IsSubsurfaceShader;
			float _IsPlantShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _ImpostorCat;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			half _SubsurfaceThicknessMaskValue;
			half _SubsurfaceScatteringValue;
			half _SubsurfaceShadowValue;
			half _SubsurfaceNormalValue;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceThicknessValue;
			CBUFFER_END


			inline void SphereImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 frameUVs, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float sizeX = _AI_FramesX;
				float sizeY = _AI_FramesY - 1; 
				float UVscale = _AI_ImpostorSize;
				float4 fractions = 1 / float4( sizeX, _AI_FramesY, sizeY, UVscale );
				float2 sizeFraction = fractions.xy;
				float axisSizeFraction = fractions.z;
				float fractionsUVscale = fractions.w;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float verticalAngle = frac( atan2( -objectCameraDirection.z, -objectCameraDirection.x ) * AI_INV_TWO_PI ) * sizeX + 0.5;
				float verticalDot = dot( objectCameraDirection, upVector );
				float upAngle = ( acos( -verticalDot ) * AI_INV_PI ) + axisSizeFraction * 0.5f;
				float yRot = sizeFraction.x * AI_PI * verticalDot * ( 2 * frac( verticalAngle ) - 1 );
				float2 uvExpansion = vertex.xy;
				float cosY = cos( yRot );
				float sinY = sin( yRot );
				float2 uvRotator = mul( uvExpansion, float2x2( cosY, -sinY, sinY, cosY ) );
				float3 billboard = objectHorizontalVector * uvRotator.x + objectVerticalVector * uvRotator.y + _AI_Offset.xyz;
				float2 relativeCoords = float2( floor( verticalAngle ), min( floor( upAngle * sizeY ), sizeY ) );
				float2 frameUV = ( ( uvExpansion * fractionsUVscale + 0.5 ) + relativeCoords ) * sizeFraction;
				frameUVs.xy = frameUV - uvOffset;
				frameUVs.zw = 0;
				viewPos.w = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( billboard ) );
				vertex.xyz = billboard;
				normal.xyz = objectCameraDirection;
			}
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			inline void SphereImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 frameUV, float4 viewPos, out float4 output0, out float4 output1 )
			{
				#if _USE_PARALLAX_ON
				float4 parallaxSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, -1) );
				frameUV.xy = ( ( 0.5 - parallaxSample.a ) * frameUV.zw ) + frameUV.xy;
				#endif
				float4 albedoSample = tex2Dbias( _Albedo, float4(frameUV.xy, 0, _AI_TextureBias) );
				o.Alpha = ( albedoSample.a - _AI_Clip );
				clip( o.Alpha );
				o.Albedo = albedoSample.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, frameUV.xy, 0);
				o.MetalTangent = test1.b;
				#endif
				output0 = tex2Dbias( _Mask, float4(frameUV.xy, 0, _AI_TextureBias) );
				output1 = tex2Dbias( _Emissive, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 normalSample = tex2Dbias( _Normals, float4(frameUV.xy, 0, _AI_TextureBias) );
				float4 remapNormal = normalSample * 2 - 1; 
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, remapNormal.xyz ) );
				o.Normal = worldNormal;
				#if defined(UNITY_PASS_SHADOWCASTER) // Standard RP fix for deferred path
				float depth = remapNormal.a * _AI_DepthSize * 0.4999 * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depth = remapNormal.a * _AI_DepthSize * 0.5 * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depth * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depth;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos.xyz, 1 ) );
				#if defined(UNITY_PASS_SHADOWCASTER) && !defined(SHADERPASS)
				#if UNITY_REVERSED_Z
				clipPos.z = min( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#else
				clipPos.z = max( clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE );
				#endif
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			
			float3 ASEGetEmissionHDRColor(float3 ldrColor, float luminanceIntensity, float exposureWeight, float inverseCurrentExposureMultiplier)
			{
				float3 hdrColor = ldrColor * luminanceIntensity;
				hdrColor = lerp( hdrColor* inverseCurrentExposureMultiplier, hdrColor, exposureWeight);
				return hdrColor;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				surfaceData.baseColor =                 surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
				surfaceData.specularColor =             surfaceDescription.Specular;
				surfaceData.coatMask =                  surfaceDescription.CoatMask;

				#ifdef _HAS_REFRACTION
					if (_EnableSSRefraction)
					{
						surfaceData.ior =                       surfaceDescription.RefractionIndex;
						surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
						surfaceData.atDistance =                surfaceDescription.RefractionDistance;

						surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
						surfaceDescription.Alpha = 1.0;
					}
					else
					{
						surfaceData.ior = 1.0;
						surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
						surfaceData.atDistance = 1.0;
						surfaceData.transmittanceMask = 0.0;
						surfaceDescription.Alpha = 1.0;
					}
				#else
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
					surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
				#endif

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
					surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
				#endif

				GetNormalWS( fragInputs, float3( 0.0, 0.0, 1.0 ), surfaceData.normalWS, float3( 1.0, 1.0, 1.0 ) );

				bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
					GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, float3( 1, 1, 1 ) );
				#endif

				surfaceData.geomNormalWS = T2W(fragInputs, 2);

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
					surfaceData.thickness = surfaceDescription.Thickness;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
					surfaceData.subsurfaceMask = surfaceDescription.SubsurfaceMask;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.transmissionMask = surfaceDescription.TransmissionMask;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
					surfaceData.diffusionProfileHash = asuint(surfaceDescription.DiffusionProfile);
				#endif

				surfaceData.tangentWS = normalize( T2W(fragInputs, 0).xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.anisotropy = surfaceDescription.Anisotropy;
					surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.worldToTangent);
				#endif
				surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
					surfaceData.specularOcclusion = surfaceDescription.SpecularOcclusion;
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
					surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
				#else
					surfaceData.specularOcclusion = 1.0;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
					surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, T2W(fragInputs, 2), surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription,FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				//#ifdef LOD_FADE_CROSSFADE
				//	uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx));
				//	LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
				//#endif

				#ifdef _ALPHATEST_ON
						DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
				#endif

				float3 bentNormalWS;
				BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION <= 50702
					InitBuiltinData( surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.positionRWS, fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				#else
					InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -T2W(fragInputs, 2), fragInputs.texCoord1, fragInputs.texCoord2, builtinData );
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				builtinData.depthOffset = 0.0;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
					builtinData.distortion = surfaceDescription.Distortion;
					builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
					builtinData.distortion = float2(0.0, 0.0);
					builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID( inputMesh );
				UNITY_TRANSFER_INSTANCE_ID( inputMesh, outputPackedVaryingsMeshToPS );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				SphereImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.frameUVs99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 worldPosOut99 = GetAbsolutePositionWS( mul( UNITY_MATRIX_I_V, float4( outputPackedVaryingsMeshToPS.viewPos99.xyz, 1.0 ) ).xyz );
				float3 WorldPosition4027_g70059 = worldPosOut99;
				float3 worldToObj4970_g70059 = mul( GetWorldToObjectMatrix(), float4( GetCameraRelativePositionWS(WorldPosition4027_g70059), 1 ) ).xyz;
				float3 VertexPosition3564_g70059 = worldToObj4970_g70059;
				half3 VertexPos40_g76291 = VertexPosition3564_g70059;
				half3 VertexPos40_g76292 = VertexPos40_g76291;
				float3 appendResult74_g76292 = (float3(VertexPos40_g76292.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76292 = appendResult74_g76292;
				float3 break84_g76292 = VertexPos40_g76292;
				float3 appendResult81_g76292 = (float3(0.0 , break84_g76292.y , break84_g76292.z));
				half3 VertexPosOtherAxis82_g76292 = appendResult81_g76292;
				float3 WorldPosition_Shifted4972_g70059 = ( WorldPosition4027_g70059 - TVE_WorldOrigin );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76267 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76267 = ( localObjectPosition_UNITY_MATRIX_M14_g76267 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76267 = localObjectPosition_UNITY_MATRIX_M14_g76267;
				#endif
				half3 ObjectData20_g76269 = staticSwitch13_g76267;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76269 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76269 = WorldData19_g76269;
				#else
				float3 staticSwitch14_g76269 = ObjectData20_g76269;
				#endif
				float3 temp_output_114_0_g76267 = staticSwitch14_g76269;
				float3 vertexToFrag4543_g70059 = temp_output_114_0_g76267;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				float3 lerpResult4934_g70059 = lerp( WorldPosition_Shifted4972_g70059 , ObjectPosition_Shifted4976_g70059 , _MotionPosition_10);
				float3 Motion_10_Position4923_g70059 = lerpResult4934_g70059;
				half3 Input_Position419_g73828 = Motion_10_Position4923_g70059;
				float Input_MotionScale287_g73828 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g73828 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g73828 = (( Input_Position419_g73828 * Input_MotionScale287_g73828 * NoiseTex_Tilling735_g73828 * 0.0075 )).xz;
				float2 temp_output_447_0_g75464 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g70059 = temp_output_447_0_g75464;
				half2 Input_DirectionWS423_g73828 = Global_Wind_DirectionWS4464_g70059;
				float lerpResult128_g74632 = lerp( _TimeParameters.x , ( ( _TimeParameters.x * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g73828 = _MotionSpeed_10;
				half Input_MotionVariation284_g73828 = 0.0;
				half Input_GlobalMeshVariation569_g73828 = 0.0;
				float temp_output_630_0_g73828 = ( ( ( lerpResult128_g74632 * Input_MotionSpeed62_g73828 ) + ( Input_MotionVariation284_g73828 * Input_GlobalMeshVariation569_g73828 ) ) * 0.03 );
				float temp_output_607_0_g73828 = frac( temp_output_630_0_g73828 );
				float4 lerpResult590_g73828 = lerp( tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * temp_output_607_0_g73828 ) ), 0, 0.0) ) , tex2Dlod( TVE_NoiseTex, float4( ( temp_output_597_0_g73828 + ( -Input_DirectionWS423_g73828 * frac( ( temp_output_630_0_g73828 + 0.5 ) ) ) ), 0, 0.0) ) , ( abs( ( temp_output_607_0_g73828 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g73828 = lerpResult590_g73828;
				float2 temp_output_645_0_g73828 = ((Noise_Complex703_g73828).rg*2.0 + -1.0);
				float2 break650_g73828 = temp_output_645_0_g73828;
				float3 appendResult649_g73828 = (float3(break650_g73828.x , 0.0 , break650_g73828.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult649_g73828 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76296 = Global_Noise_OS4572_g70059;
				float2 break448_g75464 = temp_output_447_0_g75464;
				float3 appendResult452_g75464 = (float3(break448_g75464.x , 0.0 , break448_g75464.y));
				half2 Global_Wind_DirectionOS4658_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult452_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76296 = Global_Wind_DirectionOS4658_g70059;
				float temp_output_84_0_g70060 = _LayerMotionValue;
				float temp_output_19_0_g70064 = TVE_MotionUsage[(int)temp_output_84_0_g70060];
				float4 temp_output_91_19_g70060 = TVE_MotionCoords;
				half2 UV94_g70060 = ( (temp_output_91_19_g70060).zw + ( (temp_output_91_19_g70060).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70060 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, UV94_g70060,temp_output_84_0_g70060, 0.0 );
				float4 temp_output_17_0_g70064 = tex2DArrayNode50_g70060;
				float4 temp_output_112_19_g70060 = TVE_MotionParams;
				float4 temp_output_3_0_g70064 = temp_output_112_19_g70060;
				float4 ifLocalVar18_g70064 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70064 >= 0.5 )
				ifLocalVar18_g70064 = temp_output_17_0_g70064;
				else
				ifLocalVar18_g70064 = temp_output_3_0_g70064;
				float4 lerpResult22_g70064 = lerp( temp_output_3_0_g70064 , temp_output_17_0_g70064 , temp_output_19_0_g70064);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70064 = lerpResult22_g70064;
				#else
				float4 staticSwitch24_g70064 = ifLocalVar18_g70064;
				#endif
				half4 Global_Motion_Params4344_g70059 = staticSwitch24_g70064;
				float4 break322_g75464 = Global_Motion_Params4344_g70059;
				float lerpResult457_g75464 = lerp( break322_g75464.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g75464 = ( 1.0 - lerpResult457_g75464 );
				half Global_Wind_Power2223_g70059 = ( 1.0 - ( temp_output_459_0_g75464 * temp_output_459_0_g75464 ) );
				half Input_WindPower449_g76296 = Global_Wind_Power2223_g70059;
				float2 lerpResult516_g76296 = lerp( Input_Noise_DirectionOS487_g76296 , Input_Wind_DirectionOS458_g76296 , ( Input_WindPower449_g76296 * 0.6 ));
				half Mesh_Height1524_g70059 = saturate( ( VertexPosition3564_g70059.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76296 = Mesh_Height1524_g70059;
				half ObjectData20_g76297 = Input_MeshHeight388_g76296;
				half Input_BoundsHeight390_g76296 = 1.0;
				half WorldData19_g76297 = ( Input_MeshHeight388_g76296 * Input_MeshHeight388_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76297 = WorldData19_g76297;
				#else
				float staticSwitch14_g76297 = ObjectData20_g76297;
				#endif
				half Final_Motion10_Mask321_g76296 = ( staticSwitch14_g76297 * 2.0 );
				half Motion_10_Amplitude2258_g70059 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76296 = Motion_10_Amplitude2258_g70059;
				half Global_MotionValue640_g76296 = TVE_MotionValue_10;
				half2 Final_Bending631_g76296 = ( lerpResult516_g76296 * ( Final_Motion10_Mask321_g76296 * Input_BendingAmplitude376_g76296 * Input_WindPower449_g76296 * Input_WindPower449_g76296 * Global_MotionValue640_g76296 ) );
				float2 appendResult433_g75464 = (float2(break322_g75464.x , break322_g75464.y));
				float2 temp_output_436_0_g75464 = (appendResult433_g75464*2.0 + -1.0);
				float2 break441_g75464 = temp_output_436_0_g75464;
				float3 appendResult440_g75464 = (float3(break441_g75464.x , 0.0 , break441_g75464.y));
				half2 Global_React_DirectionOS4574_g70059 = (( mul( GetWorldToObjectMatrix(), float4( appendResult440_g75464 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76296 = Global_React_DirectionOS4574_g70059;
				float clampResult17_g76299 = clamp( Input_MeshHeight388_g76296 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76298 = 0.0;
				half Input_InteractionUseMask62_g76296 = 0.0;
				float temp_output_10_0_g76298 = ( Input_InteractionUseMask62_g76296 - temp_output_7_0_g76298 );
				half Final_InteractionRemap594_g76296 = saturate( ( ( clampResult17_g76299 - temp_output_7_0_g76298 ) / ( temp_output_10_0_g76298 + 0.0001 ) ) );
				half ObjectData20_g76300 = Final_InteractionRemap594_g76296;
				half WorldData19_g76300 = ( Final_InteractionRemap594_g76296 * Final_InteractionRemap594_g76296 * Input_BoundsHeight390_g76296 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76300 = WorldData19_g76300;
				#else
				float staticSwitch14_g76300 = ObjectData20_g76300;
				#endif
				half Final_InteractionMask373_g76296 = ( staticSwitch14_g76300 * 2.0 );
				half Input_InteractionAmplitude58_g76296 = _InteractionAmplitude;
				half2 Final_Interaction632_g76296 = ( Input_React_DirectionOS358_g76296 * Final_InteractionMask373_g76296 * Input_InteractionAmplitude58_g76296 );
				half Global_React_Mask66_g70059 = ( break322_g75464.w * break322_g75464.w * break322_g75464.w * break322_g75464.w );
				float Input_InteractionGlobalMask330_g76296 = Global_React_Mask66_g70059;
				half Final_InteractionValue525_g76296 = saturate( ( Input_InteractionAmplitude58_g76296 * Input_InteractionGlobalMask330_g76296 ) );
				float2 lerpResult551_g76296 = lerp( Final_Bending631_g76296 , Final_Interaction632_g76296 , Final_InteractionValue525_g76296);
				float2 break364_g76296 = lerpResult551_g76296;
				float3 appendResult638_g76296 = (float3(break364_g76296.x , 0.0 , break364_g76296.y));
				half3 Motion_10_Interaction216_g70059 = appendResult638_g76296;
				half3 Angle44_g76291 = Motion_10_Interaction216_g70059;
				half Angle44_g76292 = (Angle44_g76291).z;
				half3 VertexPos40_g76293 = ( VertexPosRotationAxis50_g76292 + ( VertexPosOtherAxis82_g76292 * cos( Angle44_g76292 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76292 ) * sin( Angle44_g76292 ) ) );
				float3 appendResult74_g76293 = (float3(0.0 , 0.0 , VertexPos40_g76293.z));
				half3 VertexPosRotationAxis50_g76293 = appendResult74_g76293;
				float3 break84_g76293 = VertexPos40_g76293;
				float3 appendResult81_g76293 = (float3(break84_g76293.x , break84_g76293.y , 0.0));
				half3 VertexPosOtherAxis82_g76293 = appendResult81_g76293;
				half Angle44_g76293 = -(Angle44_g76291).x;
				float3 Vertex_Motion_Object833_g70059 = ( VertexPosRotationAxis50_g76293 + ( VertexPosOtherAxis82_g76293 * cos( Angle44_g76293 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76293 ) * sin( Angle44_g76293 ) ) );
				float temp_output_84_0_g70066 = _LayerVertexValue;
				float temp_output_19_0_g70070 = TVE_VertexUsage[(int)temp_output_84_0_g70066];
				float4 temp_output_94_19_g70066 = TVE_VertexCoords;
				half2 UV97_g70066 = ( (temp_output_94_19_g70066).zw + ( (temp_output_94_19_g70066).xy * (ObjectPosition4422_g70059).xz ) );
				float4 tex2DArrayNode50_g70066 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, UV97_g70066,temp_output_84_0_g70066, 0.0 );
				float4 temp_output_17_0_g70070 = tex2DArrayNode50_g70066;
				float4 temp_output_111_19_g70066 = TVE_VertexParams;
				float4 temp_output_3_0_g70070 = temp_output_111_19_g70066;
				float4 ifLocalVar18_g70070 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70070 >= 0.5 )
				ifLocalVar18_g70070 = temp_output_17_0_g70070;
				else
				ifLocalVar18_g70070 = temp_output_3_0_g70070;
				float4 lerpResult22_g70070 = lerp( temp_output_3_0_g70070 , temp_output_17_0_g70070 , temp_output_19_0_g70070);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70070 = lerpResult22_g70070;
				#else
				float4 staticSwitch24_g70070 = ifLocalVar18_g70070;
				#endif
				half4 Global_Vertex_Params4413_g70059 = staticSwitch24_g70070;
				float4 break322_g75463 = Global_Vertex_Params4413_g70059;
				half Global_Vertex_Size174_g70059 = saturate( break322_g75463.w );
				float lerpResult346_g70059 = lerp( 1.0 , Global_Vertex_Size174_g70059 , _GlobalSize);
				float3 appendResult3480_g70059 = (float3(lerpResult346_g70059 , lerpResult346_g70059 , lerpResult346_g70059));
				half3 Vertex_Size1741_g70059 = appendResult3480_g70059;
				float3 Vertex_SizeFade1740_g70059 = half3(1,1,1);
				half IsInitialized3811_g70059 = _IsInitialized;
				float3 lerpResult16_g76287 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g70059 * Vertex_Size1741_g70059 * Vertex_SizeFade1740_g70059 ) - VertexPosition3564_g70059 ) * IsInitialized3811_g70059 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g70059 = ( lerpResult16_g76287 + _DisableSRPBatcher );
				
				outputPackedVaryingsMeshToPS.ase_texcoord8.xyz = vertexToFrag4543_g70059;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord8.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g70059;

				float3 positionRWS = TransformObjectToWorld(inputMesh.vertex.xyz );
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normal);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangent.xyz), inputMesh.tangent.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.texcoord;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp05.xyzw = inputMesh.uv2;
				return outputPackedVaryingsMeshToPS;
			}

			void Frag(PackedVaryingsMeshToPS packedInput,
				#ifdef OUTPUT_SPLIT_LIGHTING
					out float4 outColor : SV_Target0,
					out float4 outDiffuseLighting : SV_Target1,
					OUTPUT_SSSBUFFER(outSSSBuffer)
				#else
					out float4 outColor : SV_Target0
				#endif
					, out float outputDepth : SV_Depth
				
			)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(packedInput);
				UNITY_SETUP_INSTANCE_ID( packedInput );

				#ifdef LOD_FADE_CROSSFADE
				float3 VC = GetWorldSpaceNormalizeViewDir(packedInput.interp00.xyz);
				LODDitheringTransition(ComputeFadeMaskSeed(VC, packedInput.positionCS.xy), unity_LODFade.x);
				#endif

				FragInputs input;

				ZERO_INITIALIZE(FragInputs, input);
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				SurfaceOutput o = (SurfaceOutput)0;

				o.Normal = packedInput.interp01.xyz; //float3( 0, 0, 1 );
				float4 clipPos = packedInput.positionCS;  //0;
				float3 worldPos = packedInput.interp00.xyz; //0;

				float4 output0 = 0;
				float4 output1 = 0;
				SphereImpostorFragment( o, clipPos, worldPos, packedInput.frameUVs99, packedInput.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g70059 = o.Albedo;
				half3 Main_Albedo3817_g70059 = ( Main_Albedo_Raw4295_g70059 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g70059 = float3(1,1,1);
				float4 break3589_g70059 = output0;
				half Main_Mask_Occlusion3712_g70059 = break3589_g70059.g;
				float3 lerpResult4779_g70059 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g70059);
				half3 Occlusion_Color4789_g70059 = lerpResult4779_g70059;
				half3 Main_Albedo_Tinted4791_g70059 = ( Main_Albedo3817_g70059 * Tint_Noise_Color5005_g70059 * Occlusion_Color4789_g70059 );
				float3 temp_output_3_0_g76289 = Main_Albedo_Tinted4791_g70059;
				float dotResult20_g76289 = dot( temp_output_3_0_g76289 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g70059 = dotResult20_g76289;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g70059).xxx;
				float temp_output_82_0_g70078 = _LayerColorsValue;
				float temp_output_19_0_g70082 = TVE_ColorsUsage[(int)temp_output_82_0_g70078];
				float4 temp_output_91_19_g70078 = TVE_ColorsCoords;
				float3 WorldPosition4027_g70059 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g70059 = packedInput.ase_texcoord8.xyz;
				float3 ObjectPosition4422_g70059 = vertexToFrag4543_g70059;
				float3 lerpResult4478_g70059 = lerp( WorldPosition4027_g70059 , ObjectPosition4422_g70059 , _ColorsPositionMode);
				half2 UV94_g70078 = ( (temp_output_91_19_g70078).zw + ( (temp_output_91_19_g70078).xy * (lerpResult4478_g70059).xz ) );
				float4 tex2DArrayNode83_g70078 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, UV94_g70078,temp_output_82_0_g70078, 0.0 );
				float4 temp_output_17_0_g70082 = tex2DArrayNode83_g70078;
				float4 temp_output_92_86_g70078 = TVE_ColorsParams;
				float4 temp_output_3_0_g70082 = temp_output_92_86_g70078;
				float4 ifLocalVar18_g70082 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70082 >= 0.5 )
				ifLocalVar18_g70082 = temp_output_17_0_g70082;
				else
				ifLocalVar18_g70082 = temp_output_3_0_g70082;
				float4 lerpResult22_g70082 = lerp( temp_output_3_0_g70082 , temp_output_17_0_g70082 , temp_output_19_0_g70082);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70082 = lerpResult22_g70082;
				#else
				float4 staticSwitch24_g70082 = ifLocalVar18_g70082;
				#endif
				half4 Global_Colors_Params4558_g70059 = staticSwitch24_g70082;
				float4 temp_output_346_0_g75531 = Global_Colors_Params4558_g70059;
				half Global_Colors_A1701_g70059 = saturate( (temp_output_346_0_g75531).w );
				half Colors_Influence3998_g70059 = Global_Colors_A1701_g70059;
				float temp_output_4814_0_g70059 = ( 1.0 - Colors_Influence3998_g70059 );
				float3 lerpResult4004_g70059 = lerp( Main_Albedo_Tinted4791_g70059 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g70059 * temp_output_4814_0_g70059 ) ));
				half3 Global_Colors_RGB1700_g70059 = (temp_output_346_0_g75531).xyz;
				half3 Colors_RGB3856_g70059 = ( Global_Colors_RGB1700_g70059 * 4.594794 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g70059 = break3589_g70059.b;
				half Colors_Value4022_g70059 = ( Main_Mask_Remap3609_g70059 * _GlobalColors );
				float3 ObjectPosition_Shifted4976_g70059 = ( ObjectPosition4422_g70059 - TVE_WorldOrigin );
				half3 Input_Position167_g76305 = ObjectPosition_Shifted4976_g70059;
				float dotResult156_g76305 = dot( (Input_Position167_g76305).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g70059 = _VertexDynamicMode;
				half Input_DynamicMode120_g76305 = Global_DynamicMode4535_g70059;
				float Postion_Random162_g76305 = ( sin( dotResult156_g76305 ) * ( 1.0 - Input_DynamicMode120_g76305 ) );
				half Main_Variation_Or_Metallic3607_g70059 = break3589_g70059.r;
				half Input_Variation124_g76305 = Main_Variation_Or_Metallic3607_g70059;
				half ObjectData20_g76307 = frac( ( Postion_Random162_g76305 + Input_Variation124_g76305 ) );
				half WorldData19_g76307 = Input_Variation124_g76305;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76307 = WorldData19_g76307;
				#else
				float staticSwitch14_g76307 = ObjectData20_g76307;
				#endif
				float temp_output_112_0_g76305 = staticSwitch14_g76307;
				float clampResult171_g76305 = clamp( temp_output_112_0_g76305 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g70059 = clampResult171_g76305;
				float lerpResult4092_g70059 = lerp( 1.0 , Global_VariationMesh4531_g70059 , _ColorsVariationValue);
				half Colors_Variation3999_g70059 = lerpResult4092_g70059;
				half Occlusion_Alpha4842_g70059 = _VertexOcclusionColor.a;
				float lerpResult5080_g70059 = lerp( Main_Mask_Occlusion3712_g70059 , ( 1.0 - Main_Mask_Occlusion3712_g70059 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g70059 = lerp( Occlusion_Alpha4842_g70059 , 1.0 , lerpResult5080_g70059);
				half Occlusion_Colors4856_g70059 = lerpResult5078_g70059;
				float3 temp_output_3_0_g76290 = ( Main_Albedo3817_g70059 * Tint_Noise_Color5005_g70059 );
				float dotResult20_g76290 = dot( temp_output_3_0_g76290 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g70059 = clamp( saturate( ( dotResult20_g76290 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g70059 = clampResult4925_g70059;
				float temp_output_7_0_g76280 = 0.1;
				float temp_output_10_0_g76280 = ( 0.2 - temp_output_7_0_g76280 );
				float lerpResult16_g76279 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g70059 * Colors_Variation3999_g70059 * Colors_Influence3998_g70059 * Occlusion_Colors4856_g70059 * Main_Albedo_Globals4847_g70059 ) - temp_output_7_0_g76280 ) / ( temp_output_10_0_g76280 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g70059 = lerp( Main_Albedo_Tinted4791_g70059 , ( lerpResult4004_g70059 * Colors_RGB3856_g70059 ) , lerpResult16_g76279);
				half3 Blend_Albedo_Colored3711_g70059 = lerpResult4007_g70059;
				half3 Global_OverlayColor1758_g70059 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g70072 = _LayerExtrasValue;
				float temp_output_19_0_g70076 = TVE_ExtrasUsage[(int)temp_output_84_0_g70072];
				float4 temp_output_93_19_g70072 = TVE_ExtrasCoords;
				float3 lerpResult4483_g70059 = lerp( WorldPosition4027_g70059 , ObjectPosition4422_g70059 , _ExtrasPositionMode);
				half2 UV96_g70072 = ( (temp_output_93_19_g70072).zw + ( (temp_output_93_19_g70072).xy * (lerpResult4483_g70059).xz ) );
				float4 tex2DArrayNode48_g70072 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g70072,temp_output_84_0_g70072, 0.0 );
				float4 temp_output_17_0_g70076 = tex2DArrayNode48_g70072;
				float4 temp_output_94_85_g70072 = TVE_ExtrasParams;
				float4 temp_output_3_0_g70076 = temp_output_94_85_g70072;
				float4 ifLocalVar18_g70076 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g70076 >= 0.5 )
				ifLocalVar18_g70076 = temp_output_17_0_g70076;
				else
				ifLocalVar18_g70076 = temp_output_3_0_g70076;
				float4 lerpResult22_g70076 = lerp( temp_output_3_0_g70076 , temp_output_17_0_g70076 , temp_output_19_0_g70076);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g70076 = lerpResult22_g70076;
				#else
				float4 staticSwitch24_g70076 = ifLocalVar18_g70076;
				#endif
				half4 Global_Extras_Params4559_g70059 = staticSwitch24_g70076;
				float4 break456_g76302 = Global_Extras_Params4559_g70059;
				half Global_Extras_Overlay156_g70059 = break456_g76302.z;
				float lerpResult3746_g70059 = lerp( 1.0 , Global_VariationMesh4531_g70059 , _OverlayVariationValue);
				half Overlay_Variation3739_g70059 = lerpResult3746_g70059;
				half Overlay_Value4803_g70059 = ( _GlobalOverlay * Global_Extras_Overlay156_g70059 * Overlay_Variation3739_g70059 );
				half3 World_Normal3638_g70059 = o.Normal;
				float lerpResult4683_g70059 = lerp( 1.0 , saturate( (World_Normal3638_g70059).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g70059 = lerpResult4683_g70059;
				half Overlay_Shading4874_g70059 = Main_Albedo_Globals4847_g70059;
				float lerpResult5086_g70059 = lerp( Main_Mask_Occlusion3712_g70059 , ( 1.0 - Main_Mask_Occlusion3712_g70059 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g70059 = lerp( Occlusion_Alpha4842_g70059 , 1.0 , lerpResult5086_g70059);
				half Occlusion_Overlay4860_g70059 = lerpResult5084_g70059;
				float temp_output_7_0_g76281 = 0.1;
				float temp_output_10_0_g76281 = ( 0.2 - temp_output_7_0_g76281 );
				half Overlay_Mask3762_g70059 = saturate( ( ( ( Overlay_Value4803_g70059 * Overlay_Projection4636_g70059 * Overlay_Shading4874_g70059 * Occlusion_Overlay4860_g70059 ) - temp_output_7_0_g76281 ) / ( temp_output_10_0_g76281 + 0.0001 ) ) );
				float3 lerpResult3875_g70059 = lerp( Blend_Albedo_Colored3711_g70059 , Global_OverlayColor1758_g70059 , Overlay_Mask3762_g70059);
				half3 Blend_Albedo_Overlay4100_g70059 = lerpResult3875_g70059;
				half Global_WetnessContrast4862_g70059 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g70059 = break456_g76302.y;
				half Wetnness_Value4824_g70059 = ( Global_Extras_Wetness305_g70059 * _GlobalWetness );
				float3 lerpResult4833_g70059 = lerp( Blend_Albedo_Overlay4100_g70059 , ( Blend_Albedo_Overlay4100_g70059 * Blend_Albedo_Overlay4100_g70059 ) , ( Global_WetnessContrast4862_g70059 * Wetnness_Value4824_g70059 ));
				half3 Blend_Albedo_Wetness4830_g70059 = lerpResult4833_g70059;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g70059 = _Vector12;
				float3 temp_output_4907_0_g70059 = ( Blend_Albedo_Wetness4830_g70059 * Tint_Highlight_Color4905_g70059 );
				half3 Subsurface_Color3656_g70059 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness4830_g70059 );
				half Global_Subsurface4111_g70059 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface4959_g70059 = TVE_OverlaySubsurface;
				float lerpResult4960_g70059 = lerp( 1.0 , Global_OverlaySubsurface4959_g70059 , Overlay_Value4803_g70059);
				half Overlay_Subsurface4962_g70059 = lerpResult4960_g70059;
				half Subsurface_Intensity3684_g70059 = ( _SubsurfaceValue * Global_Subsurface4111_g70059 * Overlay_Subsurface4962_g70059 );
				float lerpResult5069_g70059 = lerp( 1.0 , Main_Mask_Remap3609_g70059 , _SubsurfaceMaskValue);
				half Subsurface_Mask3666_g70059 = lerpResult5069_g70059;
				half3 MainLight_Direction4110_g70059 = TVE_MainLightDirection;
				float3 ase_worldPos = GetAbsolutePositionWS( packedInput.interp00 );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult3635_g70059 = normalize( ase_worldViewDir );
				float dotResult3631_g70059 = dot( -MainLight_Direction4110_g70059 , normalizeResult3635_g70059 );
				float saferPower3620_g70059 = abs( saturate( dotResult3631_g70059 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch3636_g70059 = 0.0;
				#else
				float staticSwitch3636_g70059 = ( pow( saferPower3620_g70059 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View3614_g70059 = staticSwitch3636_g70059;
				half3 Subsurface_Approximation3702_g70059 = ( Subsurface_Color3656_g70059 * Subsurface_Intensity3684_g70059 * Subsurface_Mask3666_g70059 * Mask_Subsurface_View3614_g70059 );
				half3 Blend_Albedo_Subsurface3874_g70059 = ( temp_output_4907_0_g70059 + Subsurface_Approximation3702_g70059 );
				half IsInitialized3811_g70059 = _IsInitialized;
				float3 lerpResult3815_g70059 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g70059 , IsInitialized3811_g70059);
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g70059 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g70059 = (output1).rgb;
				half Global_Extras_Emissive4408_g70059 = break456_g76302.x;
				float lerpResult4417_g70059 = lerp( 1.0 , Global_Extras_Emissive4408_g70059 , _GlobalEmissive);
				half Emissive_Value4941_g70059 = ( ( lerpResult4417_g70059 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g70059 = saturate( ( Emissive_Texture4942_g70059 + Emissive_Value4941_g70059 ) );
				float3 temp_output_3_0_g76301 = ( Emissive_Color4947_g70059 * Emissive_Mask5026_g70059 );
				float temp_output_15_0_g76301 = _emissive_intensity_value;
				float3 hdEmission22_g76301 = ASEGetEmissionHDRColor(temp_output_3_0_g76301,temp_output_15_0_g76301,_EmissiveExposureValue,GetInverseCurrentExposureMultiplier());
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g70059 = hdEmission22_g76301;
				#else
				float3 staticSwitch5070_g70059 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g70059 = staticSwitch5070_g70059;
				
				half Main_Mask_Smoothness3820_g70059 = break3589_g70059.a;
				half Main_Smoothness3838_g70059 = ( Main_Mask_Smoothness3820_g70059 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g70059 = ( 1.0 - Wetnness_Value4824_g70059 );
				half Blend_Smoothness_Wetness3898_g70059 = saturate( ( Main_Smoothness3838_g70059 + ( 1.0 - ( temp_output_4864_0_g70059 * temp_output_4864_0_g70059 ) ) ) );
				
				float temp_output_3577_0_g70059 = o.Alpha;
				float localCustomAlphaClipAlways4430_g70059 = ( temp_output_3577_0_g70059 );
				half Global_Extras_Alpha1033_g70059 = saturate( break456_g76302.w );
				float lerpResult4544_g70059 = lerp( 0.0 , Global_VariationMesh4531_g70059 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g70059 = lerpResult4544_g70059;
				float lerpResult4053_g70059 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g70059 - Global_Alpha_Variation4546_g70059 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g70059 = lerpResult4053_g70059;
				float Alpha4430_g70059 = Alpha_Composite4102_g70059;
				{
				clip(Alpha4430_g70059 - 0.1);
				}
				half Final_Alpha4955_g70059 = localCustomAlphaClipAlways4430_g70059;
				
				float lerpResult5053_g70059 = lerp( 1.0 , ( 1.0 - Subsurface_Mask3666_g70059 ) , _SubsurfaceThicknessMaskValue);
				half Subsurface_ThicknessValue5062_g70059 = ( lerpResult5053_g70059 * _SubsurfaceThicknessValue );
				half Subsurface_Thickness3650_g70059 = Subsurface_ThicknessValue5062_g70059;
				
				half Subsurface_Transmission4550_g70059 = ( Subsurface_Intensity3684_g70059 * Subsurface_Mask3666_g70059 );
				
				surfaceDescription.Albedo = lerpResult3815_g70059;
				o.Normal = World_Normal3638_g70059;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = Final_Emissive4365_g70059;
				surfaceDescription.Smoothness = Blend_Smoothness_Wetness3898_g70059;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = Final_Alpha4955_g70059;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = Subsurface_Thickness3650_g70059;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3(1,1,1);
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceDescription.TransmissionMask = Subsurface_Transmission4550_g70059;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = _SubsurfaceDiffusion;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3(1,0,0);
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				float4 bakedGI = float4( 0, 0, 0, 0 );

				packedInput.positionCS.zw = clipPos.zw;
				float3 positionRWS = worldPos;
				float3 normalWS = o.Normal;
				float4 tangentWS = packedInput.interp02.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
				//input.worldToTangent = BuildWorldToTangent( tangentWS, normalWS );
				//#else
				input.tangentToWorld = BuildTangentToWorld( tangentWS, normalWS );
				//#endif
				input.texCoord0 = packedInput.interp03.xyzw;
				input.texCoord1 = packedInput.interp04.xyzw;
				input.texCoord2 = packedInput.interp05.xyzw;

				uint2 tileIndex = uint2( input.positionSS.xy ) / GetTileSize();
				//#if defined( ASE_SRP_VERSION ) && ASE_SRP_VERSION < 60900
				//#if defined(UNITY_SINGLE_PASS_STEREO)
				//	tileIndex.x -= unity_StereoEyeIndex * _NumTileClusteredX;
				//#endif
				//PositionInputs posInput = GetPositionInput_Stereo( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz, tileIndex, unity_StereoEyeIndex );
				//#else
				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz, tileIndex );
				//#endif
				float3 normalizedWorldViewDir = GetWorldSpaceNormalizeViewDir( input.positionRWS );

				SurfaceData surfaceData;
				BuiltinData builtinData;

				GetSurfaceAndBuiltinData( surfaceDescription, input, normalizedWorldViewDir, posInput, surfaceData, builtinData);
				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);
				PreLightData preLightData = GetPreLightData(normalizedWorldViewDir, posInput, bsdfData);

				#ifdef CUSTOM_BAKED_GI
					half4 decodeInstructions = half4( LIGHTMAP_HDR_MULTIPLIER, LIGHTMAP_HDR_EXPONENT, 0.0h, 0.0h );
					builtinData.bakeDiffuseLighting = UnpackLightmapRGBM( bakedGI, decodeInstructions ) * EMISSIVE_RGBM_SCALE * bsdfData.diffuseColor;
				#endif

				outColor = float4(0.0, 0.0, 0.0, 0.0);
				#ifdef _SURFACE_TYPE_TRANSPARENT
					uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_TRANSPARENT;
				#else
					uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_OPAQUE;
				#endif
				//float3 diffuseLighting;
				//float3 specularLighting;

				//LightLoop(normalizedWorldViewDir, posInput, preLightData, bsdfData, builtinData, featureFlags, diffuseLighting, specularLighting);
				LightLoopOutput lightLoopOutput;
				LightLoop(normalizedWorldViewDir, posInput, preLightData, bsdfData, builtinData, featureFlags, lightLoopOutput);

				// Alias
				float3 diffuseLighting = lightLoopOutput.diffuseLighting;
				float3 specularLighting = lightLoopOutput.specularLighting;

				diffuseLighting *= GetCurrentExposureMultiplier();
				specularLighting *= GetCurrentExposureMultiplier();

				#ifdef OUTPUT_SPLIT_LIGHTING
					if (_EnableSubsurfaceScattering != 0 && ShouldOutputSplitLighting(bsdfData))
					{
						outColor = float4(specularLighting, 1.0);
						outDiffuseLighting = float4(TagLightingForSSS(diffuseLighting), 1.0);
					}
					else
					{
						outColor = float4(diffuseLighting + specularLighting, 1.0);
						outDiffuseLighting = 0;
					}
					ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#else
					outColor = ApplyBlendMode(diffuseLighting, specularLighting, builtinData.opacity);
					outColor = EvaluateAtmosphericScattering(posInput, normalizedWorldViewDir, outColor);
				#endif

				outputDepth = posInput.deviceDepth;
			}
			ENDHLSL
		}
		
	}
	Fallback Off
	
	CustomEditor "TVEShaderCoreGUI"
}
/*ASEBEGIN
Version=19202
Node;AmplifyShaderEditor.TexturePropertyNode;101;-1664,-256;Inherit;True;Property;_Mask;Impostor Baked Masks;3;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.AmplifyImpostorNode;99;-1408,-256;Inherit;False;9903;Spherical;False;True;True;15;17;16;14;5;13;12;8;1;2;11;10;9;7;6;21;18;2;Specular;False;9;0;SAMPLER2D;;False;1;SAMPLER2D;;False;2;SAMPLER2D;;False;3;SAMPLER2D;;False;4;SAMPLER2D;;False;5;SAMPLER2D;;False;6;SAMPLER2D;;False;7;SAMPLER2D;;False;8;SAMPLERSTATE;;False;17;FLOAT4;8;FLOAT4;9;FLOAT4;10;FLOAT4;11;FLOAT4;12;FLOAT4;13;FLOAT4;14;FLOAT4;15;FLOAT3;0;FLOAT3;1;FLOAT3;2;FLOAT3;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT3;7;FLOAT3;16
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;323;-592,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;SceneSelectionPass;0;1;SceneSelectionPass;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;325;-592,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;ShadowCaster;0;3;ShadowCaster;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;327;-592,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;Motion Vectors;0;5;Motion Vectors;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;40;False;;255;False;;40;False;;7;False;;3;False;;1;False;;1;False;;7;False;;1;False;;1;False;;1;False;;False;False;False;False;True;1;LightMode=MotionVectors;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;329;-592,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;Forward;0;6;Forward;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelOne;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelTwo;False;False;False;True;True;10;False;;255;False;;14;False;;7;False;;3;False;;1;False;;1;False;;7;False;;1;False;;1;False;;1;False;;False;False;False;False;True;1;LightMode=Forward;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;322;-592,-256;Float;False;True;-1;2;TVEShaderCoreGUI;0;14;BOXOPHOBIC/The Vegetation Engine/Impostors/Plant Subsurface Lit (Spherical);4e5791d7c677cf540a160f0a09e2385a;True;GBuffer;0;0;GBuffer;27;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;4;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;ImpostorType=Spherical;True;5;True;9;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;ps5;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;10;False;;255;False;;14;False;;7;False;;3;False;;1;False;;1;False;;7;False;;1;False;;1;False;;1;False;;False;False;False;False;True;1;LightMode=GBuffer;False;False;0;;0;0;Standard;16;Material Type,InvertActionOnDeselection;5;638181475081562077;Energy Conserving Specular,InvertActionOnDeselection;0;0;  Transmission,InvertActionOnDeselection;0;0;Surface Type;0;0;Alpha Cutoff;0;0;Receive Decals;0;0;Receives SSR;0;0;Specular AA;0;0;Specular Occlusion Mode;0;0;Distortion;0;0;Distortion Mode;0;0;Distortion Depth Test;0;0;Blend Preserves Specular;1;0;Fog;1;0;Draw Before Refraction;0;0;Refraction Model;0;0;0;7;True;True;True;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;326;-592,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;DepthOnly;0;4;DepthOnly;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;324;-592,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;META;0;2;META;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;300;-1664,-384;Inherit;False;1279.896;100;Final;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;299;-1664,-768;Inherit;False;1282.438;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;332;-1664,-64;Inherit;True;Property;_Emissive;Impostor Emissive Map;4;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;306;-1024,-256;Inherit;False;Base Impostor;22;;70059;47a437226c28ea34bad309b04e5582cd;36,4954,0,4399,1,4400,1,4412,1,4410,1,4447,1,4010,1,3868,1,4338,1,4434,1,4539,1,4336,1,5016,1,4804,1,4920,0,4910,1,3881,1,4831,1,3891,1,4416,1,1745,1,3479,0,5004,0,4987,0,3707,1,4676,1,1742,0,3484,0,860,1,4909,1,2260,1,5014,1,4901,0,4894,1,4911,1,5074,1;7;3592;COLOR;0,0,0,0;False;4370;COLOR;0,0,0,0;False;4918;FLOAT;1;False;3583;FLOAT3;0,0,0;False;3574;FLOAT3;0,0,0;False;3577;FLOAT;0;False;3563;FLOAT3;0,0,0;False;16;FLOAT3;3597;FLOAT3;3594;FLOAT3;4372;FLOAT;4373;FLOAT;3595;FLOAT;4119;FLOAT;3598;FLOAT;3980;FLOAT3;3974;FLOAT;4555;FLOAT;3973;FLOAT;3975;FLOAT;4334;FLOAT;3593;FLOAT;4335;FLOAT3;534
Node;AmplifyShaderEditor.RangedFloatNode;111;-1664,-640;Half;False;Property;_ImpostorCat;[ Impostor Cat ];0;0;Create;True;0;0;0;True;1;StyledCategory(Impostor Settings, 5, 10);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;335;-1152,-640;Inherit;False;Property;_RenderSpecular;Impostor Render Specular;19;1;[Enum];Create;False;0;2;Off;0;On;1;0;True;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;336;-1408,-640;Half;False;Property;_RenderCoverage;Impostor Alpha To Mask;20;1;[Enum];Create;False;0;2;Off;0;On;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;337;-1664,384;Inherit;False;1279.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.FunctionNode;338;-576,512;Inherit;False;Compile All Shaders;-1;;76501;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;339;-768,512;Inherit;False;Compile Impostors;-1;;76502;1cfd52e266bd86c47a094d0358cb5b93;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;340;-1664,512;Inherit;False;Define Impostor HD;-1;;76503;4bfc56eb4c68eb8429d853b857b9fcbe;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;341;-1152,512;Inherit;False;Define ShaderType Plant;138;;76504;b458122dd75182d488380bd0f592b9e6;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;342;-1408,512;Inherit;False;Define Lighting Subsurface;136;;76505;77137addbb4a22f4c818adc8782926be;0;0;1;FLOAT;0
WireConnection;99;0;101;0
WireConnection;99;1;332;0
WireConnection;322;0;306;3597
WireConnection;322;1;306;3594
WireConnection;322;6;306;4372
WireConnection;322;7;306;3598
WireConnection;322;9;306;3593
WireConnection;322;16;306;3973
WireConnection;322;61;306;4555
WireConnection;322;62;306;3975
WireConnection;322;11;306;534
WireConnection;306;3592;99;8
WireConnection;306;4370;99;9
WireConnection;306;3583;99;0
WireConnection;306;3574;99;1
WireConnection;306;3577;99;6
WireConnection;306;3563;99;7
ASEEND*/
//CHKSM=E814E67AABA47EF4CCF126481C80440AC73A76BD
