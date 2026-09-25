if state == "Active" and hit == false and
(hold_grenade == "Ready" or hold_grenade == "Rest") and 
collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_hitP,false,true).solid == false{
//shooting
    if reload_state == "Ready" and ammo > 0{
        bullet = instance_create_layer(bullet_x_offset,bullet_y_offset,"Game_Objects",o_bullet_8);
        with bullet{
            speed = 12;
            direction = other.image_angle;
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
        image_speed = 1;
        alarm[2] = fire_rate;
        ammo -= 1;
    }
    else if reload_state == "Out" and total_ammo > 0{
        event_user(0);
    }
}

