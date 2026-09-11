function scr_remove_bullet(argument0) {
	var _cam = view_camera[0];
    var _left = camera_get_view_x(_cam) - argument0;
    var _up = camera_get_view_y(_cam) - argument0;
    var _right = camera_get_view_x(_cam) + camera_get_view_width(_cam) + argument0;
    var _down = camera_get_view_y(_cam) + camera_get_view_height(_cam) + argument0;
	
	if x < _left or x > _right or y < _up or y > _down{
	    instance_destroy()
	}
}
