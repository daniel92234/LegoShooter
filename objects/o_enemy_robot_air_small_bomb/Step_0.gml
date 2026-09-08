bomb_x_offset = x + lengthdir_x(bomb_x, direction) - lengthdir_y(bomb_y * sign(image_xscale), direction);
bomb_y_offset = y + lengthdir_y(bomb_x, direction) + lengthdir_x(bomb_y * sign(image_xscale), direction);

var _cam = view_camera[0];
var _vx = camera_get_view_x(_cam);
var _vy = camera_get_view_y(_cam);
var _vw = camera_get_view_width(_cam);
var _vh = camera_get_view_height(_cam);
if (point_in_rectangle(x, y, _vx - 40, _vy - 40, _vx + _vw + 40, _vy + _vh + 40)){
    inView = true;
}
if inView == true{
    if can_bomb == true{
        alarm[0] = fire_rate;
        bomb = instance_create_layer(bomb_x_offset, bomb_y_offset, "Game_Objects", o_robot_bomb);
        with bomb{
            player = other.player;
        }
        can_bomb = false;
    }
    if start_path == false and use_path == true{
        path_start(path, 2, action, true);
        start_path = true;
    }
}

