if state == "Ground" or state == "Inactive"{
    exit;
}
else if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if reload_state == "Ready" and ammo > 0{
        bullet = instance_create_layer(bullet_x_offset,bullet_y_offset,"Game_Objects",o_bullet_7);
        with bullet{
            speed = 14;
            direction = other.image_angle + random_range(-1, 1);
            image_angle = direction;
            if o_player.facing == 1{
                image_yscale = 1;
            }
            else if o_player.facing == -1{
                image_yscale = -1;
            }
            player = "Player";
        }
        reload_state = "Rest";
        alarm[2] = fire_rate;
        image_speed = 1;
        ammo -= 1;
        scr_shell(20, -4, s_shell_1, random_range(4, 6));
    }
    exit;
}
