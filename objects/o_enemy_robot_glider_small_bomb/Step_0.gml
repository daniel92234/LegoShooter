bomb_x_offset = x + lengthdir_x(bomb_x, image_angle) - lengthdir_y(bomb_y * sign(image_yscale), image_angle);
bomb_y_offset = y + lengthdir_y(bomb_x, image_angle) + lengthdir_x(bomb_y * sign(image_yscale), image_angle);

if !(x < __view_get( e__VW.XView, 0 ) - 45 or 
x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) + 45 or
y < __view_get( e__VW.YView, 0 ) - 45 or 
y > (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) + 45){
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
        path_start(path, 4, action, true);
        start_path = true;
    }
}

