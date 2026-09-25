if state == "Active" and hit == false and
(hold_grenade == "Ready" or hold_grenade == "Rest") and 
collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_hitP,false,true).solid == false{
//shooting
    if reload_state == "Ready" and ammo > 0{
        bullet = instance_create_layer(bullet_x_offset, bullet_y_offset, "Game_Objects", o_bullet_A_8);
        with bullet{
            direction = other.image_angle;
            image_angle = direction;
            alarm[0] = 1;
            first_instance = noone;
            cx = x;
            cy = y;
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
    } else if ammo == 0 {
    exit;
    }
}

