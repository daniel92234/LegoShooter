if state == "Active" and hit == false and
(hold_grenade == "Ready" or hold_grenade == "Rest") and 
collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_hitP,false,true).solid == false{
//shooting
    if reload_state == "Ready" and ammo > 0{
        flash = instance_create_layer(flash_x_offset,flash_y_offset,"Game_Objects",o_flash);
        with flash{
            sprite_index = s_flash_A_3;
            image_speed = 0.4;
            image_angle = other.image_angle;
            if o_player.facing == 1{
                image_yscale = 1;
            }
            else if o_player.facing == -1{
                image_yscale = -1;
            }
            owner = other.id;
			light = true;
        }
        bullet = instance_create_layer(bullet_x_offset,bullet_y_offset,"Game_Objects",o_bullet_A_3);
        with bullet{
            speed = 22;
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
        reload_state = "Rest"
        alarm[2] = fire_rate;
        image_speed = 1;
        ammo -= 1;
    } else if ammo == 0 {
    exit;
    }
}

