varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_worldPos;

uniform sampler2D u_lightMap;

// x, y, width, height of camera view
uniform vec4 u_viewRect;

// 0.0 = normal lighting
// 1.0 = fully emissive
uniform float u_emissive;
uniform float u_exposure;

void main()
{
    vec4 base = texture2D(
        gm_BaseTexture, v_vTexcoord
    ) * v_vColour;

    vec2 lightUV =
        (v_worldPos - u_viewRect.xy) /
        u_viewRect.zw;

    vec3 light = texture2D(
        u_lightMap, lightUV
    ).rgb;

    // Match Bulb's LDR no-tonemap gamma calculations
    const float gamma = 2.2;

    vec3 linearBase = pow(
        max(base.rgb, vec3(0.0)),
        vec3(gamma)
    );

    vec3 litColor = pow(
        max(u_exposure * linearBase * light,
            vec3(0.0)),
        vec3(1.0 / gamma)
    );

    vec3 finalColor = mix(
        litColor,
        base.rgb,
        clamp(u_emissive, 0.0, 1.0)
    );

    gl_FragColor = vec4(
        finalColor,
        base.a
    );
}
