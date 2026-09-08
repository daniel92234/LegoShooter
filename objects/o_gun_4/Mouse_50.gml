if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if reload_state == "Ready" and ammo > 0{
        flash = instance_create(flash_x_offset, flash_y_offset,o_flash);
        with flash{
            sprite_index = s_flash_4;
            image_speed = 0.7;
            image_angle = other.image_angle;
            if global.facing == 1{
                image_yscale = 1;
            }
            else if global.facing == -1{
                image_yscale = -1;
            }
            owner = other.id
        }
        bullet = instance_create(bullet_x_offset, bullet_y_offset, o_bullet_4);
        with bullet{
            speed = 20;
            direction = other.image_angle;
            image_angle = direction;
            if global.facing == 1{
                image_yscale = 1;
            }
            else if global.facing == -1{
                image_yscale = -1;
            }
            player = "Player";
        }
        if instance_exists(o_bkg_lighting_night){
            light = instance_create(bullet_x_offset, bullet_y_offset, o_light);
            with light{
                image_alpha = 0.4;
                image_blend = make_colour_rgb(70, 255, 255);
                image_xscale = 0.3;
                image_yscale = 0.15;
            }
            bullet.light_id = light.id;
        }
        reload_state = "Rest";
        alarm[2] = 10;
        image_speed = 0.7;
        ammo -= 1;
    }
}


