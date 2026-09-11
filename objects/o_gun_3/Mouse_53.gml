if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if reload_state == "Ready" and ammo > 0{
        bullet = instance_create_layer(bullet_x_offset,bullet_y_offset,"Game_Objects",o_bullet_3);
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
        reload_state = "Rest";
        image_speed = 1;
        alarm[2] = 7;
        ammo -= 1;
        scr_shell(23, -9, s_shell_1, random_range(6, 8));
    }
    else if reload_state == "Out" and total_ammo > 0{
        event_user(0);
    }
}

