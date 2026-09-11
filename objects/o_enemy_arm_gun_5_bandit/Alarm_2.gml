if instance_exists(o_player){
    flash = instance_create_layer(flash_x_offset,flash_y_offset,"Game_Objects",o_flash);
    with flash{
        sprite_index = s_flash_5;
        image_speed = 0.4;
        image_angle = other.image_angle;
        if other.image_yscale == 1{
            image_yscale = 1;
        }
        else if other.image_yscale == -1{
            image_yscale = -1;
        }
        owner = other.id
    }
    repeat(6){
        bullet = instance_create_layer(bullet_x_offset,bullet_y_offset,"Game_Objects",o_bullet_5);
        with bullet{
            speed = 12;
            direction = other.image_angle + random_range(-4, 4);
            image_angle = direction;
            if other.image_yscale == 1{
                image_yscale = 1;
            }
            else if other.image_yscale == -1{
                image_yscale = -1;
            }
            player = "Enemy";
        }
    }
    effect_create_depth(layer_get_depth("Game_Objects") + DEPTH_OFFSET_EFFECTS, ef_smokeup,bullet_x_offset,bullet_y_offset,0,c_ltgray);
    image_speed = 0.35;
    alarm[3] = 30;
}

