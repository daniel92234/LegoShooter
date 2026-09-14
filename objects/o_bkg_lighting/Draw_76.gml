var _width = surface_get_width(application_surface);
var _height = surface_get_height(application_surface);

if (!surface_exists(emissive_surface))
{
    emissive_surface = surface_create(_width, _height);
}
else if (
    surface_get_width(emissive_surface) != _width or
    surface_get_height(emissive_surface) != _height
)
{
    surface_free(emissive_surface);
    emissive_surface = surface_create(_width, _height);
}

surface_set_target(emissive_surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();
