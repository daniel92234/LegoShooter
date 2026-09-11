if instance_exists(o_player){
    bullet = instance_create_layer(bullet_x_offset,bullet_y_offset,"Game_Objects",o_bullet_A_8);
        with bullet{
            direction = other.image_angle;
            image_angle = direction;
            alarm[0] = 1;
            alarm[1] = 5;
            first_instance = noone;
            cx = x;
            cy = y;
            alpha = 0.8;
            if global.facing == 1{
                image_yscale = 1;
            }
            else if global.facing == -1{
                image_yscale = -1;
            }
            player = "Enemy";
        }
    image_speed = 1;
}

