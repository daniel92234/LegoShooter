renderer.Free();

if (surface_exists(emissive_surface))
{
    surface_free(emissive_surface);
    emissive_surface = -1;
}
