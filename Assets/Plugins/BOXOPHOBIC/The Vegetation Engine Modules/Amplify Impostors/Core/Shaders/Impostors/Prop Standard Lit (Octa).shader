// Made with Amplify Shader Editor v1.9.2.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Impostors/Prop Standard Lit (Octa)"
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
		_ImpostorMetallicValue("Impostor Metallic", Range( 0 , 1)) = 1
		_ImpostorSmoothnessValue("Impostor Smoothness", Range( 0 , 1)) = 1
		[StyledCategory(Global Settings)]_CategoryGlobal("[ Category Global ]", Float) = 1
		[StyledEnum(TVEColorsLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerColorsValue("Layer Colors", Float) = 0
		[StyledEnum(TVEExtrasLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerExtrasValue("Layer Extras", Float) = 0
		[StyledSpace(10)]_SpaceGlobalLayers("# Space Global Layers", Float) = 0
		_GlobalColors("Global Color", Range( 0 , 1)) = 0
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		_GlobalEmissive("Global Emissive", Range( 0 , 1)) = 1
		[StyledSpace(10)]_SpaceGlobalLocals("# Space Global Locals", Float) = 0
		_ColorsIntensityValue("Color Intensity", Range( 0 , 2)) = 1
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
		_SubsurfaceScatteringValue("Subsurface Power", Range( 0 , 16)) = 2
		_SubsurfaceAngleValue("Subsurface Angle", Range( 1 , 16)) = 8
		_SubsurfaceDirectValue("Subsurface Direct", Range( 0 , 1)) = 1
		_SubsurfaceNormalValue("Subsurface Normal", Range( 0 , 1)) = 0
		_SubsurfaceAmbientValue("Subsurface Ambient", Range( 0 , 1)) = 0.2
		_SubsurfaceShadowValue("Subsurface Shadow", Range( 0 , 1)) = 1
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
		[HideInInspector]_VertexPivotMode("Enable Pre Baked Pivots", Float) = 0
		[HideInInspector]_VegetationMode("Legacy Vegetation Mode", Float) = 1
		[HideInInspector]_IsImpostorShader("_IsImpostorShader", Float) = 1
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
		[HideInInspector]_IsStandardShader("_IsStandardShader", Float) = 1
		[HideInInspector]_IsPropShader("_IsPropShader", Float) = 1

	}

	SubShader
	{
		LOD 0

		
		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Opaque" "Queue"="Geometry" "ImpostorType"="Octahedron" }

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
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP
			#define ASE_USING_SAMPLING_MACROS 1


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
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PROP_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END


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
				float4 UVsFrame199 : TEXCOORD5;
				float4 UVsFrame299 : TEXCOORD6;
				float4 UVsFrame399 : TEXCOORD7;
				float4 octaframe99 : TEXCOORD8;
				float4 viewPos99 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			half _DisableSRPBatcher;
			TEXTURE2D(_Albedo);
			SAMPLER(sampler_Albedo);
			TEXTURE2D(_Normals);
			SAMPLER(sampler_Normals);
			TEXTURE2D(_Mask);
			TEXTURE2D(_Emissive);
			SAMPLER(sampler_Mask);
			SAMPLER(sampler_Emissive);
			float TVE_ColorsUsage[10];
			TEXTURE2D_ARRAY(TVE_ColorsTex);
			half4 TVE_ColorsCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_ColorsParams;
			half TVE_IsEnabled;
			half4 TVE_OverlayColor;
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			half4 TVE_ExtrasParams;
			half TVE_WetnessContrast;
			CBUFFER_START( UnityPerMaterial )
			half4 _ImpostorColor;
			float4 _SubsurfaceDiffusion_Asset;
			half4 _EmissiveColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			float3 _AI_Offset;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			float _AI_ImpostorSize;
			float _AI_ShadowView;
			half _ImpostorCat;
			half _SubsurfaceScatteringValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _ImpostorMetallicValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _GlobalColors;
			half _ColorsIntensityValue;
			half _ColorsPositionMode;
			half _LayerColorsValue;
			float _AI_Clip;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceNormalValue;
			half _EmissiveExposureValue;
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
			half _CategoryGlobal;
			float _IsPropShader;
			half _IsStandardShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _IsTVEShader;
			half _HasOcclusion;
			half _IsIdentifier;
			half _IsCollected;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceShadowValue;
			half _CategoryEmissive;
			half _CategorySizeFade;
			half _IsVersion;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _CategoryMotion;
			half _ImpostorSmoothnessValue;
			CBUFFER_END


			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
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
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( vertex.xyz ) );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.MetalTangent = test1.b;
				#endif
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
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
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
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

				float3 Final_VertexPosition890_g76508 = ( float3(0,0,0) + _DisableSRPBatcher );
				
				OctaImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.UVsFrame199, outputPackedVaryingsMeshToPS.UVsFrame299, outputPackedVaryingsMeshToPS.UVsFrame399, outputPackedVaryingsMeshToPS.octaframe99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76548 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76548 = ( localObjectPosition_UNITY_MATRIX_M14_g76548 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76548 = localObjectPosition_UNITY_MATRIX_M14_g76548;
				#endif
				half3 ObjectData20_g76550 = staticSwitch13_g76548;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76550 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76550 = WorldData19_g76550;
				#else
				float3 staticSwitch14_g76550 = ObjectData20_g76550;
				#endif
				float3 temp_output_114_0_g76548 = staticSwitch14_g76550;
				float3 vertexToFrag4543_g76508 = temp_output_114_0_g76548;
				outputPackedVaryingsMeshToPS.ase_texcoord10.xyz = vertexToFrag4543_g76508;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord10.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g76508;

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
				OctaImpostorFragment( o, clipPos, worldPos, packedInput.UVsFrame199, packedInput.UVsFrame299, packedInput.UVsFrame399, packedInput.octaframe99, packedInput.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g76508 = o.Albedo;
				half3 Main_Albedo3817_g76508 = ( Main_Albedo_Raw4295_g76508 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g76508 = float3(1,1,1);
				float4 break3589_g76508 = output0;
				half Main_Mask_Occlusion3712_g76508 = break3589_g76508.g;
				float3 lerpResult4779_g76508 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g76508);
				half3 Occlusion_Color4789_g76508 = lerpResult4779_g76508;
				half3 Main_Albedo_Tinted4791_g76508 = ( Main_Albedo3817_g76508 * Tint_Noise_Color5005_g76508 * Occlusion_Color4789_g76508 );
				float3 temp_output_3_0_g76562 = Main_Albedo_Tinted4791_g76508;
				float dotResult20_g76562 = dot( temp_output_3_0_g76562 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g76508 = dotResult20_g76562;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g76508).xxx;
				float temp_output_82_0_g76527 = _LayerColorsValue;
				float temp_output_19_0_g76531 = TVE_ColorsUsage[(int)temp_output_82_0_g76527];
				float4 temp_output_91_19_g76527 = TVE_ColorsCoords;
				float3 WorldPosition4027_g76508 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g76508 = packedInput.ase_texcoord10.xyz;
				float3 ObjectPosition4422_g76508 = vertexToFrag4543_g76508;
				float3 lerpResult4478_g76508 = lerp( WorldPosition4027_g76508 , ObjectPosition4422_g76508 , _ColorsPositionMode);
				half2 UV94_g76527 = ( (temp_output_91_19_g76527).zw + ( (temp_output_91_19_g76527).xy * (lerpResult4478_g76508).xz ) );
				float4 tex2DArrayNode83_g76527 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, UV94_g76527,temp_output_82_0_g76527, 0.0 );
				float4 temp_output_17_0_g76531 = tex2DArrayNode83_g76527;
				float4 temp_output_92_86_g76527 = TVE_ColorsParams;
				float4 temp_output_3_0_g76531 = temp_output_92_86_g76527;
				float4 ifLocalVar18_g76531 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76531 >= 0.5 )
				ifLocalVar18_g76531 = temp_output_17_0_g76531;
				else
				ifLocalVar18_g76531 = temp_output_3_0_g76531;
				float4 lerpResult22_g76531 = lerp( temp_output_3_0_g76531 , temp_output_17_0_g76531 , temp_output_19_0_g76531);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76531 = lerpResult22_g76531;
				#else
				float4 staticSwitch24_g76531 = ifLocalVar18_g76531;
				#endif
				half4 Global_Colors_Params4558_g76508 = staticSwitch24_g76531;
				float4 temp_output_346_0_g76540 = Global_Colors_Params4558_g76508;
				half Global_Colors_A1701_g76508 = saturate( (temp_output_346_0_g76540).w );
				half Colors_Influence3998_g76508 = Global_Colors_A1701_g76508;
				float temp_output_4814_0_g76508 = ( 1.0 - Colors_Influence3998_g76508 );
				float3 lerpResult4004_g76508 = lerp( Main_Albedo_Tinted4791_g76508 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g76508 * temp_output_4814_0_g76508 ) ));
				half3 Global_Colors_RGB1700_g76508 = (temp_output_346_0_g76540).xyz;
				half3 Colors_RGB3856_g76508 = ( Global_Colors_RGB1700_g76508 * 4.594794 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g76508 = break3589_g76508.b;
				half Colors_Value4022_g76508 = ( Main_Mask_Remap3609_g76508 * _GlobalColors );
				half Colors_Variation3999_g76508 = 1.0;
				half Occlusion_Alpha4842_g76508 = _VertexOcclusionColor.a;
				float lerpResult5080_g76508 = lerp( Main_Mask_Occlusion3712_g76508 , ( 1.0 - Main_Mask_Occlusion3712_g76508 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g76508 = lerp( Occlusion_Alpha4842_g76508 , 1.0 , lerpResult5080_g76508);
				half Occlusion_Colors4856_g76508 = lerpResult5078_g76508;
				float3 temp_output_3_0_g76563 = ( Main_Albedo3817_g76508 * Tint_Noise_Color5005_g76508 );
				float dotResult20_g76563 = dot( temp_output_3_0_g76563 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g76508 = clamp( saturate( ( dotResult20_g76563 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g76508 = clampResult4925_g76508;
				float temp_output_7_0_g76556 = 0.1;
				float temp_output_10_0_g76556 = ( 0.2 - temp_output_7_0_g76556 );
				float lerpResult16_g76555 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g76508 * Colors_Variation3999_g76508 * Colors_Influence3998_g76508 * Occlusion_Colors4856_g76508 * Main_Albedo_Globals4847_g76508 ) - temp_output_7_0_g76556 ) / ( temp_output_10_0_g76556 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g76508 = lerp( Main_Albedo_Tinted4791_g76508 , ( lerpResult4004_g76508 * Colors_RGB3856_g76508 ) , lerpResult16_g76555);
				half3 Blend_Albedo_Colored3711_g76508 = lerpResult4007_g76508;
				half3 Global_OverlayColor1758_g76508 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76521 = _LayerExtrasValue;
				float temp_output_19_0_g76525 = TVE_ExtrasUsage[(int)temp_output_84_0_g76521];
				float4 temp_output_93_19_g76521 = TVE_ExtrasCoords;
				float3 lerpResult4483_g76508 = lerp( WorldPosition4027_g76508 , ObjectPosition4422_g76508 , _ExtrasPositionMode);
				half2 UV96_g76521 = ( (temp_output_93_19_g76521).zw + ( (temp_output_93_19_g76521).xy * (lerpResult4483_g76508).xz ) );
				float4 tex2DArrayNode48_g76521 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g76521,temp_output_84_0_g76521, 0.0 );
				float4 temp_output_17_0_g76525 = tex2DArrayNode48_g76521;
				float4 temp_output_94_85_g76521 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76525 = temp_output_94_85_g76521;
				float4 ifLocalVar18_g76525 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76525 >= 0.5 )
				ifLocalVar18_g76525 = temp_output_17_0_g76525;
				else
				ifLocalVar18_g76525 = temp_output_3_0_g76525;
				float4 lerpResult22_g76525 = lerp( temp_output_3_0_g76525 , temp_output_17_0_g76525 , temp_output_19_0_g76525);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76525 = lerpResult22_g76525;
				#else
				float4 staticSwitch24_g76525 = ifLocalVar18_g76525;
				#endif
				half4 Global_Extras_Params4559_g76508 = staticSwitch24_g76525;
				float4 break456_g76575 = Global_Extras_Params4559_g76508;
				half Global_Extras_Overlay156_g76508 = break456_g76575.z;
				half Overlay_Variation3739_g76508 = 1.0;
				half Overlay_Value4803_g76508 = ( _GlobalOverlay * Global_Extras_Overlay156_g76508 * Overlay_Variation3739_g76508 );
				half3 World_Normal3638_g76508 = o.Normal;
				float lerpResult4683_g76508 = lerp( 1.0 , saturate( (World_Normal3638_g76508).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g76508 = lerpResult4683_g76508;
				half Overlay_Shading4874_g76508 = Main_Albedo_Globals4847_g76508;
				float lerpResult5086_g76508 = lerp( Main_Mask_Occlusion3712_g76508 , ( 1.0 - Main_Mask_Occlusion3712_g76508 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g76508 = lerp( Occlusion_Alpha4842_g76508 , 1.0 , lerpResult5086_g76508);
				half Occlusion_Overlay4860_g76508 = lerpResult5084_g76508;
				float temp_output_7_0_g76557 = 0.1;
				float temp_output_10_0_g76557 = ( 0.2 - temp_output_7_0_g76557 );
				half Overlay_Mask3762_g76508 = saturate( ( ( ( Overlay_Value4803_g76508 * Overlay_Projection4636_g76508 * Overlay_Shading4874_g76508 * Occlusion_Overlay4860_g76508 ) - temp_output_7_0_g76557 ) / ( temp_output_10_0_g76557 + 0.0001 ) ) );
				float3 lerpResult3875_g76508 = lerp( Blend_Albedo_Colored3711_g76508 , Global_OverlayColor1758_g76508 , Overlay_Mask3762_g76508);
				half3 Blend_Albedo_Overlay4100_g76508 = lerpResult3875_g76508;
				half Global_WetnessContrast4862_g76508 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76508 = break456_g76575.y;
				half Wetnness_Value4824_g76508 = ( Global_Extras_Wetness305_g76508 * _GlobalWetness );
				float3 lerpResult4833_g76508 = lerp( Blend_Albedo_Overlay4100_g76508 , ( Blend_Albedo_Overlay4100_g76508 * Blend_Albedo_Overlay4100_g76508 ) , ( Global_WetnessContrast4862_g76508 * Wetnness_Value4824_g76508 ));
				half3 Blend_Albedo_Wetness4830_g76508 = lerpResult4833_g76508;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g76508 = _Vector12;
				float3 temp_output_4907_0_g76508 = ( Blend_Albedo_Wetness4830_g76508 * Tint_Highlight_Color4905_g76508 );
				half3 Blend_Albedo_Subsurface3874_g76508 = temp_output_4907_0_g76508;
				half IsInitialized3811_g76508 = _IsInitialized;
				float3 lerpResult3815_g76508 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g76508 , IsInitialized3811_g76508);
				
				half Main_Variation_Or_Metallic3607_g76508 = break3589_g76508.r;
				half Final_Metallic3834_g76508 = ( Main_Variation_Or_Metallic3607_g76508 * _ImpostorMetallicValue );
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g76508 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g76508 = (output1).rgb;
				half Global_Extras_Emissive4408_g76508 = break456_g76575.x;
				float lerpResult4417_g76508 = lerp( 1.0 , Global_Extras_Emissive4408_g76508 , _GlobalEmissive);
				half Emissive_Value4941_g76508 = ( ( lerpResult4417_g76508 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g76508 = saturate( ( Emissive_Texture4942_g76508 + Emissive_Value4941_g76508 ) );
				float3 temp_output_3_0_g76574 = ( Emissive_Color4947_g76508 * Emissive_Mask5026_g76508 );
				float temp_output_15_0_g76574 = _emissive_intensity_value;
				float3 hdEmission22_g76574 = ASEGetEmissionHDRColor(temp_output_3_0_g76574,temp_output_15_0_g76574,_EmissiveExposureValue,GetInverseCurrentExposureMultiplier());
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g76508 = hdEmission22_g76574;
				#else
				float3 staticSwitch5070_g76508 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g76508 = staticSwitch5070_g76508;
				
				half Main_Mask_Smoothness3820_g76508 = break3589_g76508.a;
				half Main_Smoothness3838_g76508 = ( Main_Mask_Smoothness3820_g76508 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g76508 = ( 1.0 - Wetnness_Value4824_g76508 );
				half Blend_Smoothness_Wetness3898_g76508 = saturate( ( Main_Smoothness3838_g76508 + ( 1.0 - ( temp_output_4864_0_g76508 * temp_output_4864_0_g76508 ) ) ) );
				
				float temp_output_3577_0_g76508 = o.Alpha;
				half Final_Alpha4955_g76508 = temp_output_3577_0_g76508;
				

				surfaceDescription.Albedo = lerpResult3815_g76508;
				o.Normal = World_Normal3638_g76508;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = Final_Metallic3834_g76508;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = Final_Emissive4365_g76508;
				surfaceDescription.Smoothness = Blend_Smoothness_Wetness3898_g76508;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = Final_Alpha4955_g76508;

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
				surfaceDescription.Thickness = 0;
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
				surfaceDescription.TransmissionMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
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
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP
			#define ASE_USING_SAMPLING_MACROS 1

			
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
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PROP_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END


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
				float4 UVsFrame199 : TEXCOORD0;
				float4 UVsFrame299 : TEXCOORD1;
				float4 UVsFrame399 : TEXCOORD2;
				float4 octaframe99 : TEXCOORD3;
				float4 viewPos99 : TEXCOORD4;
			};

			half _DisableSRPBatcher;
			TEXTURE2D(_Albedo);
			SAMPLER(sampler_Albedo);
			TEXTURE2D(_Normals);
			SAMPLER(sampler_Normals);
			TEXTURE2D(_Mask);
			TEXTURE2D(_Emissive);
			SAMPLER(sampler_Mask);
			SAMPLER(sampler_Emissive);
			CBUFFER_START( UnityPerMaterial )
			half4 _ImpostorColor;
			float4 _SubsurfaceDiffusion_Asset;
			half4 _EmissiveColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			float3 _AI_Offset;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			float _AI_ImpostorSize;
			float _AI_ShadowView;
			half _ImpostorCat;
			half _SubsurfaceScatteringValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _ImpostorMetallicValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _GlobalColors;
			half _ColorsIntensityValue;
			half _ColorsPositionMode;
			half _LayerColorsValue;
			float _AI_Clip;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceNormalValue;
			half _EmissiveExposureValue;
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
			half _CategoryGlobal;
			float _IsPropShader;
			half _IsStandardShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _IsTVEShader;
			half _HasOcclusion;
			half _IsIdentifier;
			half _IsCollected;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceShadowValue;
			half _CategoryEmissive;
			half _CategorySizeFade;
			half _IsVersion;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _CategoryMotion;
			half _ImpostorSmoothnessValue;
			CBUFFER_END


			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
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
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( vertex.xyz ) );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.MetalTangent = test1.b;
				#endif
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
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

				float3 Final_VertexPosition890_g76508 = ( float3(0,0,0) + _DisableSRPBatcher );
				
				OctaImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.UVsFrame199, outputPackedVaryingsMeshToPS.UVsFrame299, outputPackedVaryingsMeshToPS.UVsFrame399, outputPackedVaryingsMeshToPS.octaframe99, outputPackedVaryingsMeshToPS.viewPos99 );
				
				inputMesh.vertex.xyz += Final_VertexPosition890_g76508;

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
				OctaImpostorFragment( o, clipPos, worldPos, packedInput.UVsFrame199, packedInput.UVsFrame299, packedInput.UVsFrame399, packedInput.octaframe99, packedInput.viewPos99, output0, output1 );
				float temp_output_3577_0_g76508 = o.Alpha;
				half Final_Alpha4955_g76508 = temp_output_3577_0_g76508;
				
				surfaceDescription.Alpha = Final_Alpha4955_g76508;

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
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP
			#define ASE_USING_SAMPLING_MACROS 1


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
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PROP_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END


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
				float4 UVsFrame199 : TEXCOORD0;
				float4 UVsFrame299 : TEXCOORD1;
				float4 UVsFrame399 : TEXCOORD2;
				float4 octaframe99 : TEXCOORD3;
				float4 viewPos99 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
			};

			half _DisableSRPBatcher;
			TEXTURE2D(_Albedo);
			SAMPLER(sampler_Albedo);
			TEXTURE2D(_Normals);
			SAMPLER(sampler_Normals);
			TEXTURE2D(_Mask);
			TEXTURE2D(_Emissive);
			SAMPLER(sampler_Mask);
			SAMPLER(sampler_Emissive);
			float TVE_ColorsUsage[10];
			TEXTURE2D_ARRAY(TVE_ColorsTex);
			half4 TVE_ColorsCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_ColorsParams;
			half TVE_IsEnabled;
			half4 TVE_OverlayColor;
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			half4 TVE_ExtrasParams;
			half TVE_WetnessContrast;
			CBUFFER_START( UnityPerMaterial )
			half4 _ImpostorColor;
			float4 _SubsurfaceDiffusion_Asset;
			half4 _EmissiveColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			float3 _AI_Offset;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			float _AI_ImpostorSize;
			float _AI_ShadowView;
			half _ImpostorCat;
			half _SubsurfaceScatteringValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _ImpostorMetallicValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _GlobalColors;
			half _ColorsIntensityValue;
			half _ColorsPositionMode;
			half _LayerColorsValue;
			float _AI_Clip;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceNormalValue;
			half _EmissiveExposureValue;
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
			half _CategoryGlobal;
			float _IsPropShader;
			half _IsStandardShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _IsTVEShader;
			half _HasOcclusion;
			half _IsIdentifier;
			half _IsCollected;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceShadowValue;
			half _CategoryEmissive;
			half _CategorySizeFade;
			half _IsVersion;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _CategoryMotion;
			half _ImpostorSmoothnessValue;
			CBUFFER_END


			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
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
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( vertex.xyz ) );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.MetalTangent = test1.b;
				#endif
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
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
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
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

				float3 Final_VertexPosition890_g76508 = ( float3(0,0,0) + _DisableSRPBatcher );
				
				OctaImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.UVsFrame199, outputPackedVaryingsMeshToPS.UVsFrame299, outputPackedVaryingsMeshToPS.UVsFrame399, outputPackedVaryingsMeshToPS.octaframe99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76548 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76548 = ( localObjectPosition_UNITY_MATRIX_M14_g76548 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76548 = localObjectPosition_UNITY_MATRIX_M14_g76548;
				#endif
				half3 ObjectData20_g76550 = staticSwitch13_g76548;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76550 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76550 = WorldData19_g76550;
				#else
				float3 staticSwitch14_g76550 = ObjectData20_g76550;
				#endif
				float3 temp_output_114_0_g76548 = staticSwitch14_g76550;
				float3 vertexToFrag4543_g76508 = temp_output_114_0_g76548;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = vertexToFrag4543_g76508;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g76508;

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
				OctaImpostorFragment( o, clipPos, worldPos, packedInput.UVsFrame199, packedInput.UVsFrame299, packedInput.UVsFrame399, packedInput.octaframe99, packedInput.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g76508 = o.Albedo;
				half3 Main_Albedo3817_g76508 = ( Main_Albedo_Raw4295_g76508 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g76508 = float3(1,1,1);
				float4 break3589_g76508 = output0;
				half Main_Mask_Occlusion3712_g76508 = break3589_g76508.g;
				float3 lerpResult4779_g76508 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g76508);
				half3 Occlusion_Color4789_g76508 = lerpResult4779_g76508;
				half3 Main_Albedo_Tinted4791_g76508 = ( Main_Albedo3817_g76508 * Tint_Noise_Color5005_g76508 * Occlusion_Color4789_g76508 );
				float3 temp_output_3_0_g76562 = Main_Albedo_Tinted4791_g76508;
				float dotResult20_g76562 = dot( temp_output_3_0_g76562 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g76508 = dotResult20_g76562;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g76508).xxx;
				float temp_output_82_0_g76527 = _LayerColorsValue;
				float temp_output_19_0_g76531 = TVE_ColorsUsage[(int)temp_output_82_0_g76527];
				float4 temp_output_91_19_g76527 = TVE_ColorsCoords;
				float3 WorldPosition4027_g76508 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g76508 = packedInput.ase_texcoord5.xyz;
				float3 ObjectPosition4422_g76508 = vertexToFrag4543_g76508;
				float3 lerpResult4478_g76508 = lerp( WorldPosition4027_g76508 , ObjectPosition4422_g76508 , _ColorsPositionMode);
				half2 UV94_g76527 = ( (temp_output_91_19_g76527).zw + ( (temp_output_91_19_g76527).xy * (lerpResult4478_g76508).xz ) );
				float4 tex2DArrayNode83_g76527 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, UV94_g76527,temp_output_82_0_g76527, 0.0 );
				float4 temp_output_17_0_g76531 = tex2DArrayNode83_g76527;
				float4 temp_output_92_86_g76527 = TVE_ColorsParams;
				float4 temp_output_3_0_g76531 = temp_output_92_86_g76527;
				float4 ifLocalVar18_g76531 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76531 >= 0.5 )
				ifLocalVar18_g76531 = temp_output_17_0_g76531;
				else
				ifLocalVar18_g76531 = temp_output_3_0_g76531;
				float4 lerpResult22_g76531 = lerp( temp_output_3_0_g76531 , temp_output_17_0_g76531 , temp_output_19_0_g76531);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76531 = lerpResult22_g76531;
				#else
				float4 staticSwitch24_g76531 = ifLocalVar18_g76531;
				#endif
				half4 Global_Colors_Params4558_g76508 = staticSwitch24_g76531;
				float4 temp_output_346_0_g76540 = Global_Colors_Params4558_g76508;
				half Global_Colors_A1701_g76508 = saturate( (temp_output_346_0_g76540).w );
				half Colors_Influence3998_g76508 = Global_Colors_A1701_g76508;
				float temp_output_4814_0_g76508 = ( 1.0 - Colors_Influence3998_g76508 );
				float3 lerpResult4004_g76508 = lerp( Main_Albedo_Tinted4791_g76508 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g76508 * temp_output_4814_0_g76508 ) ));
				half3 Global_Colors_RGB1700_g76508 = (temp_output_346_0_g76540).xyz;
				half3 Colors_RGB3856_g76508 = ( Global_Colors_RGB1700_g76508 * 4.594794 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g76508 = break3589_g76508.b;
				half Colors_Value4022_g76508 = ( Main_Mask_Remap3609_g76508 * _GlobalColors );
				half Colors_Variation3999_g76508 = 1.0;
				half Occlusion_Alpha4842_g76508 = _VertexOcclusionColor.a;
				float lerpResult5080_g76508 = lerp( Main_Mask_Occlusion3712_g76508 , ( 1.0 - Main_Mask_Occlusion3712_g76508 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g76508 = lerp( Occlusion_Alpha4842_g76508 , 1.0 , lerpResult5080_g76508);
				half Occlusion_Colors4856_g76508 = lerpResult5078_g76508;
				float3 temp_output_3_0_g76563 = ( Main_Albedo3817_g76508 * Tint_Noise_Color5005_g76508 );
				float dotResult20_g76563 = dot( temp_output_3_0_g76563 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g76508 = clamp( saturate( ( dotResult20_g76563 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g76508 = clampResult4925_g76508;
				float temp_output_7_0_g76556 = 0.1;
				float temp_output_10_0_g76556 = ( 0.2 - temp_output_7_0_g76556 );
				float lerpResult16_g76555 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g76508 * Colors_Variation3999_g76508 * Colors_Influence3998_g76508 * Occlusion_Colors4856_g76508 * Main_Albedo_Globals4847_g76508 ) - temp_output_7_0_g76556 ) / ( temp_output_10_0_g76556 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g76508 = lerp( Main_Albedo_Tinted4791_g76508 , ( lerpResult4004_g76508 * Colors_RGB3856_g76508 ) , lerpResult16_g76555);
				half3 Blend_Albedo_Colored3711_g76508 = lerpResult4007_g76508;
				half3 Global_OverlayColor1758_g76508 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76521 = _LayerExtrasValue;
				float temp_output_19_0_g76525 = TVE_ExtrasUsage[(int)temp_output_84_0_g76521];
				float4 temp_output_93_19_g76521 = TVE_ExtrasCoords;
				float3 lerpResult4483_g76508 = lerp( WorldPosition4027_g76508 , ObjectPosition4422_g76508 , _ExtrasPositionMode);
				half2 UV96_g76521 = ( (temp_output_93_19_g76521).zw + ( (temp_output_93_19_g76521).xy * (lerpResult4483_g76508).xz ) );
				float4 tex2DArrayNode48_g76521 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g76521,temp_output_84_0_g76521, 0.0 );
				float4 temp_output_17_0_g76525 = tex2DArrayNode48_g76521;
				float4 temp_output_94_85_g76521 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76525 = temp_output_94_85_g76521;
				float4 ifLocalVar18_g76525 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76525 >= 0.5 )
				ifLocalVar18_g76525 = temp_output_17_0_g76525;
				else
				ifLocalVar18_g76525 = temp_output_3_0_g76525;
				float4 lerpResult22_g76525 = lerp( temp_output_3_0_g76525 , temp_output_17_0_g76525 , temp_output_19_0_g76525);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76525 = lerpResult22_g76525;
				#else
				float4 staticSwitch24_g76525 = ifLocalVar18_g76525;
				#endif
				half4 Global_Extras_Params4559_g76508 = staticSwitch24_g76525;
				float4 break456_g76575 = Global_Extras_Params4559_g76508;
				half Global_Extras_Overlay156_g76508 = break456_g76575.z;
				half Overlay_Variation3739_g76508 = 1.0;
				half Overlay_Value4803_g76508 = ( _GlobalOverlay * Global_Extras_Overlay156_g76508 * Overlay_Variation3739_g76508 );
				half3 World_Normal3638_g76508 = o.Normal;
				float lerpResult4683_g76508 = lerp( 1.0 , saturate( (World_Normal3638_g76508).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g76508 = lerpResult4683_g76508;
				half Overlay_Shading4874_g76508 = Main_Albedo_Globals4847_g76508;
				float lerpResult5086_g76508 = lerp( Main_Mask_Occlusion3712_g76508 , ( 1.0 - Main_Mask_Occlusion3712_g76508 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g76508 = lerp( Occlusion_Alpha4842_g76508 , 1.0 , lerpResult5086_g76508);
				half Occlusion_Overlay4860_g76508 = lerpResult5084_g76508;
				float temp_output_7_0_g76557 = 0.1;
				float temp_output_10_0_g76557 = ( 0.2 - temp_output_7_0_g76557 );
				half Overlay_Mask3762_g76508 = saturate( ( ( ( Overlay_Value4803_g76508 * Overlay_Projection4636_g76508 * Overlay_Shading4874_g76508 * Occlusion_Overlay4860_g76508 ) - temp_output_7_0_g76557 ) / ( temp_output_10_0_g76557 + 0.0001 ) ) );
				float3 lerpResult3875_g76508 = lerp( Blend_Albedo_Colored3711_g76508 , Global_OverlayColor1758_g76508 , Overlay_Mask3762_g76508);
				half3 Blend_Albedo_Overlay4100_g76508 = lerpResult3875_g76508;
				half Global_WetnessContrast4862_g76508 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76508 = break456_g76575.y;
				half Wetnness_Value4824_g76508 = ( Global_Extras_Wetness305_g76508 * _GlobalWetness );
				float3 lerpResult4833_g76508 = lerp( Blend_Albedo_Overlay4100_g76508 , ( Blend_Albedo_Overlay4100_g76508 * Blend_Albedo_Overlay4100_g76508 ) , ( Global_WetnessContrast4862_g76508 * Wetnness_Value4824_g76508 ));
				half3 Blend_Albedo_Wetness4830_g76508 = lerpResult4833_g76508;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g76508 = _Vector12;
				float3 temp_output_4907_0_g76508 = ( Blend_Albedo_Wetness4830_g76508 * Tint_Highlight_Color4905_g76508 );
				half3 Blend_Albedo_Subsurface3874_g76508 = temp_output_4907_0_g76508;
				half IsInitialized3811_g76508 = _IsInitialized;
				float3 lerpResult3815_g76508 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g76508 , IsInitialized3811_g76508);
				
				half Main_Variation_Or_Metallic3607_g76508 = break3589_g76508.r;
				half Final_Metallic3834_g76508 = ( Main_Variation_Or_Metallic3607_g76508 * _ImpostorMetallicValue );
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g76508 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g76508 = (output1).rgb;
				half Global_Extras_Emissive4408_g76508 = break456_g76575.x;
				float lerpResult4417_g76508 = lerp( 1.0 , Global_Extras_Emissive4408_g76508 , _GlobalEmissive);
				half Emissive_Value4941_g76508 = ( ( lerpResult4417_g76508 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g76508 = saturate( ( Emissive_Texture4942_g76508 + Emissive_Value4941_g76508 ) );
				float3 temp_output_3_0_g76574 = ( Emissive_Color4947_g76508 * Emissive_Mask5026_g76508 );
				float temp_output_15_0_g76574 = _emissive_intensity_value;
				float3 hdEmission22_g76574 = ASEGetEmissionHDRColor(temp_output_3_0_g76574,temp_output_15_0_g76574,_EmissiveExposureValue,GetInverseCurrentExposureMultiplier());
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g76508 = hdEmission22_g76574;
				#else
				float3 staticSwitch5070_g76508 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g76508 = staticSwitch5070_g76508;
				
				half Main_Mask_Smoothness3820_g76508 = break3589_g76508.a;
				half Main_Smoothness3838_g76508 = ( Main_Mask_Smoothness3820_g76508 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g76508 = ( 1.0 - Wetnness_Value4824_g76508 );
				half Blend_Smoothness_Wetness3898_g76508 = saturate( ( Main_Smoothness3838_g76508 + ( 1.0 - ( temp_output_4864_0_g76508 * temp_output_4864_0_g76508 ) ) ) );
				
				float temp_output_3577_0_g76508 = o.Alpha;
				half Final_Alpha4955_g76508 = temp_output_3577_0_g76508;
				

				surfaceDescription.Albedo = lerpResult3815_g76508;
				o.Normal = World_Normal3638_g76508;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = Final_Metallic3834_g76508;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = Final_Emissive4365_g76508;
				surfaceDescription.Smoothness = Blend_Smoothness_Wetness3898_g76508;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = Final_Alpha4955_g76508;

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
				surfaceDescription.Thickness = 0;
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
				surfaceDescription.TransmissionMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
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
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP
			#define ASE_USING_SAMPLING_MACROS 1

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
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PROP_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END


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
				float4 UVsFrame199 : TEXCOORD0;
				float4 UVsFrame299 : TEXCOORD1;
				float4 UVsFrame399 : TEXCOORD2;
				float4 octaframe99 : TEXCOORD3;
				float4 viewPos99 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			half _DisableSRPBatcher;
			TEXTURE2D(_Albedo);
			SAMPLER(sampler_Albedo);
			TEXTURE2D(_Normals);
			SAMPLER(sampler_Normals);
			TEXTURE2D(_Mask);
			TEXTURE2D(_Emissive);
			SAMPLER(sampler_Mask);
			SAMPLER(sampler_Emissive);
			CBUFFER_START( UnityPerMaterial )
			half4 _ImpostorColor;
			float4 _SubsurfaceDiffusion_Asset;
			half4 _EmissiveColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			float3 _AI_Offset;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			float _AI_ImpostorSize;
			float _AI_ShadowView;
			half _ImpostorCat;
			half _SubsurfaceScatteringValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _ImpostorMetallicValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _GlobalColors;
			half _ColorsIntensityValue;
			half _ColorsPositionMode;
			half _LayerColorsValue;
			float _AI_Clip;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceNormalValue;
			half _EmissiveExposureValue;
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
			half _CategoryGlobal;
			float _IsPropShader;
			half _IsStandardShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _IsTVEShader;
			half _HasOcclusion;
			half _IsIdentifier;
			half _IsCollected;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceShadowValue;
			half _CategoryEmissive;
			half _CategorySizeFade;
			half _IsVersion;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _CategoryMotion;
			half _ImpostorSmoothnessValue;
			CBUFFER_END


			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
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
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( vertex.xyz ) );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.MetalTangent = test1.b;
				#endif
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
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

				float3 Final_VertexPosition890_g76508 = ( float3(0,0,0) + _DisableSRPBatcher );
				
				OctaImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.UVsFrame199, outputPackedVaryingsMeshToPS.UVsFrame299, outputPackedVaryingsMeshToPS.UVsFrame399, outputPackedVaryingsMeshToPS.octaframe99, outputPackedVaryingsMeshToPS.viewPos99 );
				
				inputMesh.vertex.xyz += Final_VertexPosition890_g76508;

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
				OctaImpostorFragment( o, clipPos, worldPos, packedInput.UVsFrame199, packedInput.UVsFrame299, packedInput.UVsFrame399, packedInput.octaframe99, packedInput.viewPos99, output0, output1 );
				float temp_output_3577_0_g76508 = o.Alpha;
				half Final_Alpha4955_g76508 = temp_output_3577_0_g76508;
				

				surfaceDescription.Alpha = Final_Alpha4955_g76508;

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
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP
			#define ASE_USING_SAMPLING_MACROS 1

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
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PROP_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END


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
				float4 UVsFrame199 : TEXCOORD8;
				float4 UVsFrame299 : TEXCOORD9;
				float4 UVsFrame399 : TEXCOORD10;
				float4 octaframe99 : TEXCOORD11;
				float4 viewPos99 : TEXCOORD12;
				float4 ase_texcoord13 : TEXCOORD13;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			half _DisableSRPBatcher;
			TEXTURE2D(_Albedo);
			SAMPLER(sampler_Albedo);
			TEXTURE2D(_Normals);
			SAMPLER(sampler_Normals);
			TEXTURE2D(_Mask);
			TEXTURE2D(_Emissive);
			SAMPLER(sampler_Mask);
			SAMPLER(sampler_Emissive);
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_ExtrasParams;
			CBUFFER_START( UnityPerMaterial )
			half4 _ImpostorColor;
			float4 _SubsurfaceDiffusion_Asset;
			half4 _EmissiveColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			float3 _AI_Offset;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			float _AI_ImpostorSize;
			float _AI_ShadowView;
			half _ImpostorCat;
			half _SubsurfaceScatteringValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _ImpostorMetallicValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _GlobalColors;
			half _ColorsIntensityValue;
			half _ColorsPositionMode;
			half _LayerColorsValue;
			float _AI_Clip;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceNormalValue;
			half _EmissiveExposureValue;
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
			half _CategoryGlobal;
			float _IsPropShader;
			half _IsStandardShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _IsTVEShader;
			half _HasOcclusion;
			half _IsIdentifier;
			half _IsCollected;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceShadowValue;
			half _CategoryEmissive;
			half _CategorySizeFade;
			half _IsVersion;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _CategoryMotion;
			half _ImpostorSmoothnessValue;
			CBUFFER_END


			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
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
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( vertex.xyz ) );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.MetalTangent = test1.b;
				#endif
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
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
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
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

				float3 Final_VertexPosition890_g76508 = ( float3(0,0,0) + _DisableSRPBatcher );
				
				OctaImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.UVsFrame199, outputPackedVaryingsMeshToPS.UVsFrame299, outputPackedVaryingsMeshToPS.UVsFrame399, outputPackedVaryingsMeshToPS.octaframe99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76548 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76548 = ( localObjectPosition_UNITY_MATRIX_M14_g76548 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76548 = localObjectPosition_UNITY_MATRIX_M14_g76548;
				#endif
				half3 ObjectData20_g76550 = staticSwitch13_g76548;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76550 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76550 = WorldData19_g76550;
				#else
				float3 staticSwitch14_g76550 = ObjectData20_g76550;
				#endif
				float3 temp_output_114_0_g76548 = staticSwitch14_g76550;
				float3 vertexToFrag4543_g76508 = temp_output_114_0_g76548;
				outputPackedVaryingsMeshToPS.ase_texcoord13.xyz = vertexToFrag4543_g76508;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord13.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g76508;

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
				OctaImpostorFragment( o, clipPos, worldPos, packedInput.UVsFrame199, packedInput.UVsFrame299, packedInput.UVsFrame399, packedInput.octaframe99, packedInput.viewPos99, output0, output1 );
				float4 break3589_g76508 = output0;
				half Main_Mask_Smoothness3820_g76508 = break3589_g76508.a;
				half Main_Smoothness3838_g76508 = ( Main_Mask_Smoothness3820_g76508 * _ImpostorSmoothnessValue );
				float temp_output_84_0_g76521 = _LayerExtrasValue;
				float temp_output_19_0_g76525 = TVE_ExtrasUsage[(int)temp_output_84_0_g76521];
				float4 temp_output_93_19_g76521 = TVE_ExtrasCoords;
				float3 WorldPosition4027_g76508 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g76508 = packedInput.ase_texcoord13.xyz;
				float3 ObjectPosition4422_g76508 = vertexToFrag4543_g76508;
				float3 lerpResult4483_g76508 = lerp( WorldPosition4027_g76508 , ObjectPosition4422_g76508 , _ExtrasPositionMode);
				half2 UV96_g76521 = ( (temp_output_93_19_g76521).zw + ( (temp_output_93_19_g76521).xy * (lerpResult4483_g76508).xz ) );
				float4 tex2DArrayNode48_g76521 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g76521,temp_output_84_0_g76521, 0.0 );
				float4 temp_output_17_0_g76525 = tex2DArrayNode48_g76521;
				float4 temp_output_94_85_g76521 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76525 = temp_output_94_85_g76521;
				float4 ifLocalVar18_g76525 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76525 >= 0.5 )
				ifLocalVar18_g76525 = temp_output_17_0_g76525;
				else
				ifLocalVar18_g76525 = temp_output_3_0_g76525;
				float4 lerpResult22_g76525 = lerp( temp_output_3_0_g76525 , temp_output_17_0_g76525 , temp_output_19_0_g76525);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76525 = lerpResult22_g76525;
				#else
				float4 staticSwitch24_g76525 = ifLocalVar18_g76525;
				#endif
				half4 Global_Extras_Params4559_g76508 = staticSwitch24_g76525;
				float4 break456_g76575 = Global_Extras_Params4559_g76508;
				half Global_Extras_Wetness305_g76508 = break456_g76575.y;
				half Wetnness_Value4824_g76508 = ( Global_Extras_Wetness305_g76508 * _GlobalWetness );
				float temp_output_4864_0_g76508 = ( 1.0 - Wetnness_Value4824_g76508 );
				half Blend_Smoothness_Wetness3898_g76508 = saturate( ( Main_Smoothness3838_g76508 + ( 1.0 - ( temp_output_4864_0_g76508 * temp_output_4864_0_g76508 ) ) ) );
				
				float temp_output_3577_0_g76508 = o.Alpha;
				half Final_Alpha4955_g76508 = temp_output_3577_0_g76508;
				
				surfaceDescription.Smoothness = Blend_Smoothness_Wetness3898_g76508;
				surfaceDescription.Alpha = Final_Alpha4955_g76508;

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
			#define ASE_SRP_VERSION 170001
			#ifdef UNITY_COLORSPACE_GAMMA//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)//AI_SRP
			#else//AI_SRP
			#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) //AI_SRP
			#endif//AI_SRP
			#define ASE_USING_SAMPLING_MACROS 1


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
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_HD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PROP_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END


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
				float4 UVsFrame199 : TEXCOORD6;
				float4 UVsFrame299 : TEXCOORD7;
				float4 UVsFrame399 : TEXCOORD8;
				float4 octaframe99 : TEXCOORD9;
				float4 viewPos99 : TEXCOORD10;
				float4 ase_texcoord11 : TEXCOORD11;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			half _DisableSRPBatcher;
			TEXTURE2D(_Albedo);
			SAMPLER(sampler_Albedo);
			TEXTURE2D(_Normals);
			SAMPLER(sampler_Normals);
			TEXTURE2D(_Mask);
			TEXTURE2D(_Emissive);
			SAMPLER(sampler_Mask);
			SAMPLER(sampler_Emissive);
			float TVE_ColorsUsage[10];
			TEXTURE2D_ARRAY(TVE_ColorsTex);
			half4 TVE_ColorsCoords;
			SAMPLER(sampler_Linear_Clamp);
			half4 TVE_ColorsParams;
			half TVE_IsEnabled;
			half4 TVE_OverlayColor;
			float TVE_ExtrasUsage[10];
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoords;
			half4 TVE_ExtrasParams;
			half TVE_WetnessContrast;
			CBUFFER_START( UnityPerMaterial )
			half4 _ImpostorColor;
			float4 _SubsurfaceDiffusion_Asset;
			half4 _EmissiveColor;
			half4 _NoiseMaskRemap;
			float4 _AI_SizeOffset;
			half4 _VertexOcclusionColor;
			float3 _AI_Offset;
			float _AI_ShadowBias;
			float _AI_DepthSize;
			float _AI_TextureBias;
			float _AI_Parallax;
			float _AI_FramesY;
			float _AI_FramesX;
			float _AI_Frames;
			half _EmissiveMode;
			half _EmissiveIntensityMode;
			half _EmissiveIntensityValue;
			half _MessageOcclusion;
			float _AI_ImpostorSize;
			float _AI_ShadowView;
			half _ImpostorCat;
			half _SubsurfaceScatteringValue;
			float _emissive_intensity_value;
			half _EmissivePhaseValue;
			half _GlobalEmissive;
			half _ImpostorMetallicValue;
			half _GlobalWetness;
			half _VertexOcclusionOverlayMode;
			half _OverlayProjectionValue;
			half _ExtrasPositionMode;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _VertexOcclusionColorsMode;
			half _GlobalColors;
			half _ColorsIntensityValue;
			half _ColorsPositionMode;
			half _LayerColorsValue;
			float _AI_Clip;
			half _SubsurfaceAmbientValue;
			half _SubsurfaceNormalValue;
			half _EmissiveExposureValue;
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
			half _CategoryGlobal;
			float _IsPropShader;
			half _IsStandardShader;
			half _RenderCoverage;
			float _RenderSpecular;
			half _IsTVEShader;
			half _HasOcclusion;
			half _IsIdentifier;
			half _IsCollected;
			half _SubsurfaceDirectValue;
			half _SubsurfaceAngleValue;
			half _IsImpostorShader;
			half _IsInitialized;
			half _VegetationMode;
			half _CategoryNoise;
			half _CategorySubsurface;
			half _SubsurfaceShadowValue;
			half _CategoryEmissive;
			half _CategorySizeFade;
			half _IsVersion;
			half _VertexVariationMode;
			half _HasEmissive;
			half _HasGradient;
			half _IsCustomShader;
			half _IsShared;
			half _CategoryMotion;
			half _ImpostorSmoothnessValue;
			CBUFFER_END


			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
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
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = TransformWorldToView( TransformObjectToWorld( vertex.xyz ) );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutput o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				#if defined(AI_HD_RENDERPIPELINE)
				float4 feat1 = _Features.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.Diffusion = feat1.rgb;
				o.Features = feat1.a;
				float4 test1 = _Specular.SampleLevel( SamplerState_Point_Repeat, parallax1, 0);
				o.MetalTangent = test1.b;
				#endif
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#if ( defined(SHADERPASS) && ((defined(SHADERPASS_SHADOWS) && SHADERPASS == SHADERPASS_SHADOWS) || (defined(SHADERPASS_SHADOWCASTER) && SHADERPASS == SHADERPASS_SHADOWCASTER)) ) || defined(UNITY_PASS_SHADOWCASTER)
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
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
			
			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
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

				float3 Final_VertexPosition890_g76508 = ( float3(0,0,0) + _DisableSRPBatcher );
				
				OctaImpostorVertex( inputMesh.vertex, inputMesh.normal, outputPackedVaryingsMeshToPS.UVsFrame199, outputPackedVaryingsMeshToPS.UVsFrame299, outputPackedVaryingsMeshToPS.UVsFrame399, outputPackedVaryingsMeshToPS.octaframe99, outputPackedVaryingsMeshToPS.viewPos99 );
				float3 localObjectPosition_UNITY_MATRIX_M14_g76548 = ObjectPosition_UNITY_MATRIX_M();
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g76548 = ( localObjectPosition_UNITY_MATRIX_M14_g76548 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g76548 = localObjectPosition_UNITY_MATRIX_M14_g76548;
				#endif
				half3 ObjectData20_g76550 = staticSwitch13_g76548;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.vertex).xyz ) );
				half3 WorldData19_g76550 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76550 = WorldData19_g76550;
				#else
				float3 staticSwitch14_g76550 = ObjectData20_g76550;
				#endif
				float3 temp_output_114_0_g76548 = staticSwitch14_g76550;
				float3 vertexToFrag4543_g76508 = temp_output_114_0_g76548;
				outputPackedVaryingsMeshToPS.ase_texcoord11.xyz = vertexToFrag4543_g76508;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord11.w = 0;
				inputMesh.vertex.xyz += Final_VertexPosition890_g76508;

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
				OctaImpostorFragment( o, clipPos, worldPos, packedInput.UVsFrame199, packedInput.UVsFrame299, packedInput.UVsFrame399, packedInput.octaframe99, packedInput.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g76508 = o.Albedo;
				half3 Main_Albedo3817_g76508 = ( Main_Albedo_Raw4295_g76508 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g76508 = float3(1,1,1);
				float4 break3589_g76508 = output0;
				half Main_Mask_Occlusion3712_g76508 = break3589_g76508.g;
				float3 lerpResult4779_g76508 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g76508);
				half3 Occlusion_Color4789_g76508 = lerpResult4779_g76508;
				half3 Main_Albedo_Tinted4791_g76508 = ( Main_Albedo3817_g76508 * Tint_Noise_Color5005_g76508 * Occlusion_Color4789_g76508 );
				float3 temp_output_3_0_g76562 = Main_Albedo_Tinted4791_g76508;
				float dotResult20_g76562 = dot( temp_output_3_0_g76562 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g76508 = dotResult20_g76562;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g76508).xxx;
				float temp_output_82_0_g76527 = _LayerColorsValue;
				float temp_output_19_0_g76531 = TVE_ColorsUsage[(int)temp_output_82_0_g76527];
				float4 temp_output_91_19_g76527 = TVE_ColorsCoords;
				float3 WorldPosition4027_g76508 = GetAbsolutePositionWS( worldPos );
				float3 vertexToFrag4543_g76508 = packedInput.ase_texcoord11.xyz;
				float3 ObjectPosition4422_g76508 = vertexToFrag4543_g76508;
				float3 lerpResult4478_g76508 = lerp( WorldPosition4027_g76508 , ObjectPosition4422_g76508 , _ColorsPositionMode);
				half2 UV94_g76527 = ( (temp_output_91_19_g76527).zw + ( (temp_output_91_19_g76527).xy * (lerpResult4478_g76508).xz ) );
				float4 tex2DArrayNode83_g76527 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, UV94_g76527,temp_output_82_0_g76527, 0.0 );
				float4 temp_output_17_0_g76531 = tex2DArrayNode83_g76527;
				float4 temp_output_92_86_g76527 = TVE_ColorsParams;
				float4 temp_output_3_0_g76531 = temp_output_92_86_g76527;
				float4 ifLocalVar18_g76531 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76531 >= 0.5 )
				ifLocalVar18_g76531 = temp_output_17_0_g76531;
				else
				ifLocalVar18_g76531 = temp_output_3_0_g76531;
				float4 lerpResult22_g76531 = lerp( temp_output_3_0_g76531 , temp_output_17_0_g76531 , temp_output_19_0_g76531);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76531 = lerpResult22_g76531;
				#else
				float4 staticSwitch24_g76531 = ifLocalVar18_g76531;
				#endif
				half4 Global_Colors_Params4558_g76508 = staticSwitch24_g76531;
				float4 temp_output_346_0_g76540 = Global_Colors_Params4558_g76508;
				half Global_Colors_A1701_g76508 = saturate( (temp_output_346_0_g76540).w );
				half Colors_Influence3998_g76508 = Global_Colors_A1701_g76508;
				float temp_output_4814_0_g76508 = ( 1.0 - Colors_Influence3998_g76508 );
				float3 lerpResult4004_g76508 = lerp( Main_Albedo_Tinted4791_g76508 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g76508 * temp_output_4814_0_g76508 ) ));
				half3 Global_Colors_RGB1700_g76508 = (temp_output_346_0_g76540).xyz;
				half3 Colors_RGB3856_g76508 = ( Global_Colors_RGB1700_g76508 * 4.594794 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g76508 = break3589_g76508.b;
				half Colors_Value4022_g76508 = ( Main_Mask_Remap3609_g76508 * _GlobalColors );
				half Colors_Variation3999_g76508 = 1.0;
				half Occlusion_Alpha4842_g76508 = _VertexOcclusionColor.a;
				float lerpResult5080_g76508 = lerp( Main_Mask_Occlusion3712_g76508 , ( 1.0 - Main_Mask_Occlusion3712_g76508 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g76508 = lerp( Occlusion_Alpha4842_g76508 , 1.0 , lerpResult5080_g76508);
				half Occlusion_Colors4856_g76508 = lerpResult5078_g76508;
				float3 temp_output_3_0_g76563 = ( Main_Albedo3817_g76508 * Tint_Noise_Color5005_g76508 );
				float dotResult20_g76563 = dot( temp_output_3_0_g76563 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g76508 = clamp( saturate( ( dotResult20_g76563 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g76508 = clampResult4925_g76508;
				float temp_output_7_0_g76556 = 0.1;
				float temp_output_10_0_g76556 = ( 0.2 - temp_output_7_0_g76556 );
				float lerpResult16_g76555 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g76508 * Colors_Variation3999_g76508 * Colors_Influence3998_g76508 * Occlusion_Colors4856_g76508 * Main_Albedo_Globals4847_g76508 ) - temp_output_7_0_g76556 ) / ( temp_output_10_0_g76556 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g76508 = lerp( Main_Albedo_Tinted4791_g76508 , ( lerpResult4004_g76508 * Colors_RGB3856_g76508 ) , lerpResult16_g76555);
				half3 Blend_Albedo_Colored3711_g76508 = lerpResult4007_g76508;
				half3 Global_OverlayColor1758_g76508 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76521 = _LayerExtrasValue;
				float temp_output_19_0_g76525 = TVE_ExtrasUsage[(int)temp_output_84_0_g76521];
				float4 temp_output_93_19_g76521 = TVE_ExtrasCoords;
				float3 lerpResult4483_g76508 = lerp( WorldPosition4027_g76508 , ObjectPosition4422_g76508 , _ExtrasPositionMode);
				half2 UV96_g76521 = ( (temp_output_93_19_g76521).zw + ( (temp_output_93_19_g76521).xy * (lerpResult4483_g76508).xz ) );
				float4 tex2DArrayNode48_g76521 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, UV96_g76521,temp_output_84_0_g76521, 0.0 );
				float4 temp_output_17_0_g76525 = tex2DArrayNode48_g76521;
				float4 temp_output_94_85_g76521 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76525 = temp_output_94_85_g76521;
				float4 ifLocalVar18_g76525 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76525 >= 0.5 )
				ifLocalVar18_g76525 = temp_output_17_0_g76525;
				else
				ifLocalVar18_g76525 = temp_output_3_0_g76525;
				float4 lerpResult22_g76525 = lerp( temp_output_3_0_g76525 , temp_output_17_0_g76525 , temp_output_19_0_g76525);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76525 = lerpResult22_g76525;
				#else
				float4 staticSwitch24_g76525 = ifLocalVar18_g76525;
				#endif
				half4 Global_Extras_Params4559_g76508 = staticSwitch24_g76525;
				float4 break456_g76575 = Global_Extras_Params4559_g76508;
				half Global_Extras_Overlay156_g76508 = break456_g76575.z;
				half Overlay_Variation3739_g76508 = 1.0;
				half Overlay_Value4803_g76508 = ( _GlobalOverlay * Global_Extras_Overlay156_g76508 * Overlay_Variation3739_g76508 );
				half3 World_Normal3638_g76508 = o.Normal;
				float lerpResult4683_g76508 = lerp( 1.0 , saturate( (World_Normal3638_g76508).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g76508 = lerpResult4683_g76508;
				half Overlay_Shading4874_g76508 = Main_Albedo_Globals4847_g76508;
				float lerpResult5086_g76508 = lerp( Main_Mask_Occlusion3712_g76508 , ( 1.0 - Main_Mask_Occlusion3712_g76508 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g76508 = lerp( Occlusion_Alpha4842_g76508 , 1.0 , lerpResult5086_g76508);
				half Occlusion_Overlay4860_g76508 = lerpResult5084_g76508;
				float temp_output_7_0_g76557 = 0.1;
				float temp_output_10_0_g76557 = ( 0.2 - temp_output_7_0_g76557 );
				half Overlay_Mask3762_g76508 = saturate( ( ( ( Overlay_Value4803_g76508 * Overlay_Projection4636_g76508 * Overlay_Shading4874_g76508 * Occlusion_Overlay4860_g76508 ) - temp_output_7_0_g76557 ) / ( temp_output_10_0_g76557 + 0.0001 ) ) );
				float3 lerpResult3875_g76508 = lerp( Blend_Albedo_Colored3711_g76508 , Global_OverlayColor1758_g76508 , Overlay_Mask3762_g76508);
				half3 Blend_Albedo_Overlay4100_g76508 = lerpResult3875_g76508;
				half Global_WetnessContrast4862_g76508 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76508 = break456_g76575.y;
				half Wetnness_Value4824_g76508 = ( Global_Extras_Wetness305_g76508 * _GlobalWetness );
				float3 lerpResult4833_g76508 = lerp( Blend_Albedo_Overlay4100_g76508 , ( Blend_Albedo_Overlay4100_g76508 * Blend_Albedo_Overlay4100_g76508 ) , ( Global_WetnessContrast4862_g76508 * Wetnness_Value4824_g76508 ));
				half3 Blend_Albedo_Wetness4830_g76508 = lerpResult4833_g76508;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g76508 = _Vector12;
				float3 temp_output_4907_0_g76508 = ( Blend_Albedo_Wetness4830_g76508 * Tint_Highlight_Color4905_g76508 );
				half3 Blend_Albedo_Subsurface3874_g76508 = temp_output_4907_0_g76508;
				half IsInitialized3811_g76508 = _IsInitialized;
				float3 lerpResult3815_g76508 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g76508 , IsInitialized3811_g76508);
				
				half Main_Variation_Or_Metallic3607_g76508 = break3589_g76508.r;
				half Final_Metallic3834_g76508 = ( Main_Variation_Or_Metallic3607_g76508 * _ImpostorMetallicValue );
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g76508 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g76508 = (output1).rgb;
				half Global_Extras_Emissive4408_g76508 = break456_g76575.x;
				float lerpResult4417_g76508 = lerp( 1.0 , Global_Extras_Emissive4408_g76508 , _GlobalEmissive);
				half Emissive_Value4941_g76508 = ( ( lerpResult4417_g76508 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g76508 = saturate( ( Emissive_Texture4942_g76508 + Emissive_Value4941_g76508 ) );
				float3 temp_output_3_0_g76574 = ( Emissive_Color4947_g76508 * Emissive_Mask5026_g76508 );
				float temp_output_15_0_g76574 = _emissive_intensity_value;
				float3 hdEmission22_g76574 = ASEGetEmissionHDRColor(temp_output_3_0_g76574,temp_output_15_0_g76574,_EmissiveExposureValue,GetInverseCurrentExposureMultiplier());
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g76508 = hdEmission22_g76574;
				#else
				float3 staticSwitch5070_g76508 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g76508 = staticSwitch5070_g76508;
				
				half Main_Mask_Smoothness3820_g76508 = break3589_g76508.a;
				half Main_Smoothness3838_g76508 = ( Main_Mask_Smoothness3820_g76508 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g76508 = ( 1.0 - Wetnness_Value4824_g76508 );
				half Blend_Smoothness_Wetness3898_g76508 = saturate( ( Main_Smoothness3838_g76508 + ( 1.0 - ( temp_output_4864_0_g76508 * temp_output_4864_0_g76508 ) ) ) );
				
				float temp_output_3577_0_g76508 = o.Alpha;
				half Final_Alpha4955_g76508 = temp_output_3577_0_g76508;
				
				surfaceDescription.Albedo = lerpResult3815_g76508;
				o.Normal = World_Normal3638_g76508;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = Final_Metallic3834_g76508;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = Final_Emissive4365_g76508;
				surfaceDescription.Smoothness = Blend_Smoothness_Wetness3898_g76508;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = Final_Alpha4955_g76508;

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
				surfaceDescription.Thickness = 1;
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
				surfaceDescription.TransmissionMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
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
Node;AmplifyShaderEditor.AmplifyImpostorNode;99;-1408,-256;Inherit;False;9903;Octahedron;False;True;True;15;17;16;14;5;13;12;8;1;2;11;10;9;7;6;21;18;2;Metallic;False;9;0;SAMPLER2D;;False;1;SAMPLER2D;;False;2;SAMPLER2D;;False;3;SAMPLER2D;;False;4;SAMPLER2D;;False;5;SAMPLER2D;;False;6;SAMPLER2D;;False;7;SAMPLER2D;;False;8;SAMPLERSTATE;;False;17;FLOAT4;8;FLOAT4;9;FLOAT4;10;FLOAT4;11;FLOAT4;12;FLOAT4;13;FLOAT4;14;FLOAT4;15;FLOAT3;0;FLOAT3;1;FLOAT3;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT3;7;FLOAT3;16
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;349;-608,-256;Float;False;True;-1;2;TVEShaderCoreGUI;0;14;BOXOPHOBIC/The Vegetation Engine/Impostors/Prop Standard Lit (Octa);4e5791d7c677cf540a160f0a09e2385a;True;GBuffer;0;0;GBuffer;27;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;4;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;ImpostorType=Octahedron;True;5;True;9;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;ps5;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;10;False;;255;False;;14;False;;7;False;;3;False;;1;False;;1;False;;7;False;;1;False;;1;False;;1;False;;False;False;False;False;True;1;LightMode=GBuffer;False;False;0;;0;0;Standard;16;Material Type,InvertActionOnDeselection;0;0;Energy Conserving Specular,InvertActionOnDeselection;0;0;  Transmission,InvertActionOnDeselection;0;0;Surface Type;0;0;Alpha Cutoff;0;0;Receive Decals;0;0;Receives SSR;0;0;Specular AA;0;0;Specular Occlusion Mode;0;0;Distortion;0;0;Distortion Mode;0;0;Distortion Depth Test;0;0;Blend Preserves Specular;1;0;Fog;1;0;Draw Before Refraction;0;0;Refraction Model;0;0;0;7;True;True;True;True;True;False;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;353;-608,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;DepthOnly;0;4;DepthOnly;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;354;-608,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;Motion Vectors;0;5;Motion Vectors;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;40;False;;255;False;;40;False;;7;False;;3;False;;1;False;;1;False;;7;False;;1;False;;1;False;;1;False;;False;False;False;False;True;1;LightMode=MotionVectors;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;356;-608,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;Forward;0;6;Forward;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelOne;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelTwo;False;False;False;True;True;10;False;;255;False;;14;False;;7;False;;3;False;;1;False;;1;False;;7;False;;1;False;;1;False;;1;False;;False;False;False;False;True;1;LightMode=Forward;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;351;-608,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;META;0;2;META;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;352;-608,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;ShadowCaster;0;3;ShadowCaster;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;350;-608,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;SceneSelectionPass;0;1;SceneSelectionPass;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;8;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;300;-1664,-384;Inherit;False;1279.896;100;Final;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;299;-1664,-768;Inherit;False;1282.438;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;359;-1664,-64;Inherit;True;Property;_Emissive;Impostor Emissive Map;4;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;357;-576,-640;Inherit;False;Compile All Shaders;-1;;76501;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;111;-1664,-640;Half;False;Property;_ImpostorCat;[ Impostor Cat ];0;0;Create;True;0;0;0;True;1;StyledCategory(Impostor Settings, 5, 10);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;358;-768,-640;Inherit;False;Compile Impostors;-1;;76502;1cfd52e266bd86c47a094d0358cb5b93;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;362;-1152,-640;Inherit;False;Property;_RenderSpecular;Impostor Render Specular;19;1;[Enum];Create;False;0;2;Off;0;On;1;0;True;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;363;-1408,-640;Half;False;Property;_RenderCoverage;Impostor Alpha To Mask;20;1;[Enum];Create;False;0;2;Off;0;On;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;364;-1664,384;Inherit;False;1279.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.FunctionNode;365;-576,512;Inherit;False;Compile All Shaders;-1;;76503;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;366;-768,512;Inherit;False;Compile Impostors;-1;;76504;1cfd52e266bd86c47a094d0358cb5b93;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;367;-1664,512;Inherit;False;Define Impostor HD;-1;;76505;4bfc56eb4c68eb8429d853b857b9fcbe;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;368;-1408,512;Inherit;False;Define Lighting Standard;136;;76506;116a5c57ec750cb4896f729a6748c509;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;370;-1152,512;Inherit;False;Define ShaderType Prop;138;;76507;96e31a47d32deff49ba83d5b364f536d;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;341;-1025,-257;Inherit;False;Base Impostor;22;;76508;47a437226c28ea34bad309b04e5582cd;36,4954,0,4399,1,4400,1,4412,1,4410,1,4447,0,4010,1,3868,1,4338,0,4434,0,4539,1,4336,1,5016,1,4804,1,4920,0,4910,1,3881,0,4831,1,3891,1,4416,1,1745,0,3479,0,5004,0,4987,0,3707,0,4676,1,1742,0,3484,0,860,0,4909,0,2260,1,5014,1,4901,0,4894,1,4911,1,5074,1;7;3592;COLOR;0,0,0,0;False;4370;COLOR;0,0,0,0;False;4918;FLOAT;1;False;3583;FLOAT3;0,0,0;False;3574;FLOAT3;0,0,0;False;3577;FLOAT;0;False;3563;FLOAT3;0,0,0;False;16;FLOAT3;3597;FLOAT3;3594;FLOAT3;4372;FLOAT;4373;FLOAT;3595;FLOAT;4119;FLOAT;3598;FLOAT;3980;FLOAT3;3974;FLOAT;4555;FLOAT;3973;FLOAT;3975;FLOAT;4334;FLOAT;3593;FLOAT;4335;FLOAT3;534
WireConnection;99;0;101;0
WireConnection;99;1;359;0
WireConnection;349;0;341;3597
WireConnection;349;1;341;3594
WireConnection;349;4;341;3595
WireConnection;349;6;341;4372
WireConnection;349;7;341;3598
WireConnection;349;9;341;3593
WireConnection;349;11;341;534
WireConnection;341;3592;99;8
WireConnection;341;4370;99;9
WireConnection;341;3583;99;0
WireConnection;341;3574;99;1
WireConnection;341;3577;99;6
WireConnection;341;3563;99;7
ASEEND*/
//CHKSM=2D825CD596E3EF8F10A354EBB1E2AFEC1964608E
