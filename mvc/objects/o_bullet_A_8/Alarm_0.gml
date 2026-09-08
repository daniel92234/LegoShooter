var xx, yy, dx, dy, instance, first_instance;

dx = 0;
dy = 0;

xx = x + lengthdir_x(590, direction);
yy = y + lengthdir_y(590, direction);
first_instance = collision_line(x, y, xx, yy, o_hitP, true, true);
if first_instance != noone{
    dx = xx - x;
    dy = yy - y;
    while (abs(dx) >= 1 || abs(dy) >= 1){
        dx /= 2;
        dy /= 2;
        instance = collision_line(x, y, xx - dx, yy - dy, o_hitP, true, true);
        if (instance != noone){
            first_instance = instance;
            xx -= dx;
            yy -= dy;
        }
    }
}
cx = (xx - dx);
cy = (yy - (dy * 2));
if first_instance != noone{
    with first_instance{
        hit = other.id;
        scr_hit_check_bullet();
    }
    if first_instance.solid == true{
        event_user(0);
        event_user(1);
    }
}
image_xscale = point_distance(x, y, cx, cy);

