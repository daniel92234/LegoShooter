if instance_exists(o_player){
    with instance_create_layer(flash_x_offset,"Game_Objects",flash_y_offset, o_flash){
        sprite_index = s_flash_turret;
        image_speed = 0.4;
        if (o_player.x < other.x){
            image_yscale = -1;
        }
        else if (o_player.x > other.x){
            image_yscale = 1;
        }
        owner = other.id;
    }
    bullet = instance_create_layer(bullet_x_offset, "Game_Objects", bullet_y_offset, o_laser_robot);
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
    if instance_exists(o_bkg_lighting_night){
        light = instance_create(bullet_x_offset, bullet_y_offset, o_light);
        with light{
            image_alpha = 0.4;
            image_blend = make_colour_rgb(50, 255, 50);
            image_xscale = 0.25;
            image_yscale = 0.25;
        }
        bullet.light_id = light.id;
    }
    image_speed = 1;
}

