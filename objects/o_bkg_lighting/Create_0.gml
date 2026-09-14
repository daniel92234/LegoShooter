renderer = new BulbRenderer(view_camera[0]);
renderer.ambientColor = make_colour_rgb(40,40,40);
renderer.soft = false;
renderer.smooth = false;

emissive_surface = -1;

beginEmissive = function(){
    surface_set_target(emissive_surface);
    camera_apply(view_camera[0]);
};
endEmissive = function(){
    surface_reset_target();
};
