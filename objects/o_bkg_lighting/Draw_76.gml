var _width = surface_get_width(application_surface);
var _height = surface_get_height(application_surface);

if (!surface_exists(emissive_surface)){
    emissive_surface = surface_create(_width, _height);
}

surface_set_target(emissive_surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();
