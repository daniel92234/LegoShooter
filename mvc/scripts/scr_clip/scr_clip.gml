x_clip = x + lengthdir_x(argument0, image_angle) - lengthdir_y(argument1 * sign(image_yscale), image_angle);
y_clip = y + lengthdir_y(argument0, image_angle) + lengthdir_x(argument1 * sign(image_yscale), image_angle);
with instance_create(x_clip, y_clip, o_bit){
    depth = -100;
    sprite_index = argument2;
    image_speed = 0;
    if global.facing == 1{
        image_angle = other.image_angle;
        motion_add(other.image_angle - 90 * other.image_xscale, random_range(1, 3));
    //motion_add(other.direction,other.speed);
    }
    else if global.facing == -1{
        image_angle = other.image_angle;
        motion_add(other.image_angle + 90 * other.image_xscale, random_range(1, 3));
    //motion_add(other.direction,other.speed);
    }
}
