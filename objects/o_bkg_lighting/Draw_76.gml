renderer.Update();

var camera = view_camera[0];
var lightSurface = renderer.GetLightSurface();

gpu_set_ztestenable(false);

shader_set(sh_emissive);

texture_set_stage(
    u_lightMap,
    surface_get_texture(lightSurface)
);

shader_set_uniform_f(
    u_viewRect,
    camera_get_view_x(camera),
    camera_get_view_y(camera),
    camera_get_view_width(camera),
    camera_get_view_height(camera)
);

shader_set_uniform_f(
    u_exposure,
    renderer.exposure
);

shader_set_uniform_f(u_emissive, 0.0);
