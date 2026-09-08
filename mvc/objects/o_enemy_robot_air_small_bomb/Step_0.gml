bomb_x_offset = x + lengthdir_x(bomb_x, direction) - lengthdir_y(bomb_y * sign(image_xscale), direction);
bomb_y_offset = y + lengthdir_y(bomb_x, direction) + lengthdir_x(bomb_y * sign(image_xscale), direction);

if !(x < __view_get( e__VW.XView, 0 ) - 40 or 
x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) + 40 or
y < __view_get( e__VW.YView, 0 ) - 40 or 
y > (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) + 40){
    inView = true;
}
if inView == true{
    if can_bomb == true{
        alarm[0] = 90;
        bomb = instance_create(bomb_x_offset, bomb_y_offset, o_robot_bomb);
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

