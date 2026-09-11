gun_x_offset = x + lengthdir_x(gun_x, image_angle) - lengthdir_y(gun_y * sign(image_yscale), image_angle);
gun_y_offset = y + lengthdir_y(gun_x, image_angle) + lengthdir_x(gun_y * sign(image_yscale), image_angle);

var _cam = view_camera[0];
var _left = camera_get_view_x(_cam) - 40;
var _up = camera_get_view_y(_cam) - 40;
var _right = _left + camera_get_view_width(_cam) + 40;
var _down = _up + camera_get_view_height(_cam) + 40;
if (point_in_rectangle(x, y, _left, _up, _right, _down)){
    inView = true;
}
if start_path == false and inView == true and path != noone{
    path_start(path, 2, action, true);
    start_path = true;
}
