if state == "Ground" or state == "Inactive"{
    exit;
}
else if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if reload_state == "Ready" and ammo > 0{
        flash = instance_create(flash_x_offset, flash_y_offset,o_flash);
        with flash{
            sprite_index = s_flash_A_2;
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
        bullet = instance_create(bullet_x_offset, bullet_y_offset, o_bullet_A_2);
        with bullet{
            speed = 20;
            direction = other.image_angle + random_range(-1.8, 1.8);;
            image_angle = direction;
            if global.facing == 1{
                image_yscale = 1;
            }
            else if global.facing == -1{
                image_yscale = -1;
            }
            player = "Player";
        }
        reload_state = "Rest";
        alarm[0] = 8;
        image_speed = 0.4;
        ammo -= 1;
    }
    else if ammo == 0 and reload_state == "Out"{
        image_speed = 0;
        exit;
    }
}

