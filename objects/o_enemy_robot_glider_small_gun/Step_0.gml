gun_x_offset = x + lengthdir_x(gun_x, image_angle) - lengthdir_y(gun_y * sign(image_yscale), image_angle);
gun_y_offset = y + lengthdir_y(gun_x, image_angle) + lengthdir_x(gun_y * sign(image_yscale), image_angle);

if use_path == false{
    exit;
}
if !(x < __view_get( e__VW.XView, 0 ) - 45 or 
x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) + 45 or
y < __view_get( e__VW.YView, 0 ) - 45 or 
y > (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) + 45){
    inView = true;
}
if inView == true and start_path == false{
    path_start(path, 4, action, true);
    start_path = true;
}

