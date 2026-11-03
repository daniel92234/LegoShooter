depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_EFFECTS;

renderer = new BulbRenderer(view_camera[0]);

renderer.ambientColor = make_colour_rgb(brightness, brightness, brightness);
renderer.soft = false;
renderer.smooth = false;

renderer.hdr = false;
renderer.ldrTonemap = BULB_TONEMAP_NONE;

application_surface_draw_enable(true);

u_lightMap = shader_get_sampler_index(
    sh_emissive, "u_lightMap"
);

u_viewRect = shader_get_uniform(
    sh_emissive, "u_viewRect"
);

u_emissive = shader_get_uniform(
    sh_emissive, "u_emissive"
);

u_exposure = shader_get_uniform(
    sh_emissive, "u_exposure"
);
