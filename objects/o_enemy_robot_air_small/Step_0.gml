if use_path == false{
    exit;
}

var _cam = view_camera[0];
var _vx = camera_get_view_x(_cam);
var _vy = camera_get_view_y(_cam);
var _vw = camera_get_view_width(_cam);
var _vh = camera_get_view_height(_cam);
if (point_in_rectangle(x, y, _vx - 40, _vy - 40, _vx + _vw + 40, _vy + _vh + 40)){
    inView = true;
}
if inView == true and start_path == false{
    path_start(path, 2, action, true);
    start_path = true;
}

