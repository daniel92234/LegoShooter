if instance_exists(o_player){
    with instance_create_layer(flash_x_offset,"Game_Objects",flash_y_offset, o_flash){
        sprite_index = s_flash_turret_M;
        image_speed = 0.4;
        if (o_player.x < other.x){
            image_yscale = -1;
        }
        else if (o_player.x > other.x){
            image_yscale = 1;
        }
        owner = other.id;
    }
    bullet = instance_create_layer(bullet_x_offset,"Game_Objects",bullet_y_offset,o_laser_robot_M);
    with bullet{
        speed = 10;
        direction = point_direction(x,y,o_player.x,o_player.y) + random_range(-other.shoot_angle_offset, other.shoot_angle_offset);
        image_angle = direction;
        if (o_player.x < other.x){
            image_yscale = -1;
        }
        else if (o_player.x > other.x){
            image_yscale = 1;
        }
        player = "Enemy";
    }
    image_speed = 1;
}

