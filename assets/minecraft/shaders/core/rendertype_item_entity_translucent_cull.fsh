#version 330

#moj_import <emissives.glsl>

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;

out vec4 fragColor;

in vec4 emissiveTint;

void main() {
    vec4 sampledColor = texture(Sampler0, texCoord0);
    float emissiveOpacity = getEmissiveOpacity(sampledColor.a);
    vec4 color = sampledColor;
    color.a = emissiveOpacity >= 0.0 ? emissiveOpacity : sampledColor.a;
    color *= vertexColor * ColorModulator;

    color = applyEmissiveColor(color, sampledColor, emissiveTint * ColorModulator, emissiveOpacity);

    if (color.a < 0.1) {
        discard;
    }
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
