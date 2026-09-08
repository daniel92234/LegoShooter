if state == "Ground" or state == "Inactive"{
    exit;
}
else if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if reload_state == "Ready" and ammo > 0{
        bullet = instance_create(bullet_x_offset, bullet_y_offset, o_bullet_9);
        with bullet{
            speed = 11;
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
        reload_state = "Rest";
        image_speed = 1;
        alarm[1] = 27;
        ammo -= 1;
    }
    else if reload_state == "Out" and total_ammo > 0{
        event_user(0);
    }
}

