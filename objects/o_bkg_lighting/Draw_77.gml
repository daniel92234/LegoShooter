///Post-Draw Event for objLightController

//Update the lights and shadows on the renderer
renderer.Update();

//Apply the lighting to the application surface
BulbApplyLightingToSurface(renderer, application_surface);

// Put emissive pixels back at full brightness
if (surface_exists(emissive_surface))
{
    surface_set_target(application_surface);

    gpu_set_blendmode(bm_normal);
    draw_surface(emissive_surface, 0, 0);

    surface_reset_target();
}
