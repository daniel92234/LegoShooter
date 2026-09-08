if instance_exists(o_player) {
    flash = instance_create(flash_x_offset, flash_y_offset,o_flash);
    with flash{
        sprite_index = s_flash_A_7;
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
    bullet = instance_create(bullet_x_offset, bullet_y_offset, o_bullet_A_7);
    with bullet{
        speed = 10;
        direction = other.image_angle;
        image_angle = direction;
        if other.image_yscale == 1{
            image_yscale = 1;
        }
        else if other.image_yscale == -1{
            image_yscale = -1;
        }
        player = "Enemy";
    }
    if instance_exists(o_bkg_lighting_night){
        light = instance_create(bullet_x_offset, bullet_y_offset, o_light);
        with light{
            image_alpha = 0.4;
            image_blend = make_colour_rgb(155, 0, 255);
            image_xscale = 0.2;
            image_yscale = 0.125;
        }
        bullet.light_id = light.id;
    }
    image_speed = 1;
}

