if state == "Ground" or state == "Inactive"{
    exit;
}
else if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if reload_state == "Ready" and ammo > 0{
        bullet1 = instance_create(bullet_x_offset1, bullet_y_offset1, o_bullet_1);
        with bullet1{
            speed = 15;
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
        bullet2 = instance_create(bullet_x_offset2, bullet_y_offset2, o_bullet_1);
        with bullet2{
            speed = 15;
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
        alarm[2] = 2;
        image_speed = 1;
        ammo -= 1;
        scr_shell(25, -5, s_shell_1, random_range(5, 7));
        scr_shell(25, -3, s_shell_1, random_range(3, 5));
    }
    else if reload_state == "Out" and total_ammo > 0{
        event_user(0);
    }
}

