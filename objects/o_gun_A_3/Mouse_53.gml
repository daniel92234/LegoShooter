if state == "Ground" or state == "Inactive"{
    exit;
}
else if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if reload_state == "Ready" and ammo > 0{
        flash = instance_create_layer(flash_x_offset,flash_y_offset,"Game_Objects",o_flash);
        with flash{
            sprite_index = s_flash_A_3;
            image_speed = 0.4;
            image_angle = other.image_angle;
            if global.facing == 1{
                image_yscale = 1;
            }
            else if global.facing == -1{
                image_yscale = -1;
            }
            owner = other.id
        }
        bullet = instance_create_layer(bullet_x_offset,bullet_y_offset,"Game_Objects",o_bullet_A_3);
        with bullet{
            speed = 22;
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
        reload_state = "Rest"
        alarm[2] = 15;
        image_speed = 1;
        ammo -= 1;
    } else if ammo == 0 {
    exit;
    }
}

