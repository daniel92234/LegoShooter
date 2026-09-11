bomb_x_offset = x + lengthdir_x(bomb_x, image_angle) - lengthdir_y(bomb_y * sign(image_xscale), image_angle);
bomb_y_offset = y + lengthdir_y(bomb_x, image_angle) + lengthdir_x(bomb_y * sign(image_yscale), image_angle);

var _cam = view_camera[0];
var _left = camera_get_view_x(_cam) - 40;
var _up = camera_get_view_y(_cam) - 40;
var _right = _left + camera_get_view_width(_cam) + 40;
var _down = _up + camera_get_view_height(_cam) + 40;
if (point_in_rectangle(x, y, _left, _up, _right, _down)){
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
    if start_path == false and path != noone{
        path_start(path, 2, action, true);
        start_path = true;
    }
}

