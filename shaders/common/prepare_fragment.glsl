// Aurora Fantasy 5.0 - Prepare_fragment.glsl
// Sky colors.

#include "/lib/config.glsl"
#include "/lib/luma.glsl"

/* Color utils */

#ifdef THE_END
    #include "/lib/color_utils_end.glsl"
#elif defined NETHER
    #include "/lib/color_utils_nether.glsl"
#else
    #include "/lib/color_utils.glsl"
#endif

/* Uniforms */

uniform mat4 gbufferProjectionInverse;
uniform float pixel_size_x;
uniform float pixel_size_y;
uniform float rainStrength;
uniform float wetness;
uniform vec3 sunPosition;
uniform float eyeAltitude;
uniform float light_mix;
uniform vec4 lightningBoltPosition;
uniform float frameTime;

uniform float frameTimeCounter;
uniform vec3 cameraPosition;
uniform mat4 gbufferModelViewInverse;
uniform float viewWidth;
uniform float viewHeight;
uniform int frameCounter;

/* Ins / Outs */

varying vec3 up_vec;
varying vec2 texcoord;
varying vec3 hi_sky_color;
varying vec3 mid_sky_color;
varying vec3 low_sky_color;
varying vec3 pure_hi_sky_color;
varying vec3 pure_mid_sky_color;
varying vec3 pure_low_sky_color;
varying vec4 position;

/* Utility functions */

#include "/lib/dither.glsl"
#include "/lib/biome_sky.glsl"

#ifdef THE_END
    #include "/lib/stars.glsl"
#endif

#define FRAGMENT
#include "/lib/downscale.glsl"

// MAIN FUNCTION ------------------

void main() {
    if(fragment_cull()) discard;
    #if defined THE_END 
        // Calculate view direction for stars
        vec4 screen_pos = vec4(gl_FragCoord.xy * vec2(pixel_size_x, pixel_size_y), gl_FragCoord.z, 1.0);
        vec4 fragposition = gbufferProjectionInverse * (screen_pos * 2.0 - 1.0);
        vec4 world_pos = gbufferModelViewInverse * vec4(fragposition.xyz, 0.0);
        vec3 viewDir = normalize(world_pos.xyz);
        
        vec4 star_color = vec4(stars(viewDir), 1.0);
        vec3 block_color = ZENITH_DAY_COLOR + star_color.rgb;
    #elif defined NETHER
        vec3 block_color = ZENITH_DAY_COLOR;
    #else
        #include "/src/get_sky.glsl"
    #endif
    #include "/src/writebuffers.glsl"
}