if state == "Ground" or state == "Inactive"{
    exit;
}
else if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if reload_state == "Ready" and ammo > 0{
        bullet = instance_create(bullet_x_offset, bullet_y_offset, o_bullet_A_8);
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
            player = "Player";
        }
        reload_state = "Rest";
        alarm[0] = 9;
        image_speed = 1;
        ammo -= 1;
    } else if ammo == 0 {
    exit;
    }
}

