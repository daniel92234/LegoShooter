if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if (reload_state == "Ready" or reload_state == "Reloading") and ammo > 0{
		if (reload_state == "Reloading"){
			alarm[0] = -1
			sprite = gun_spr
		}
        flash = instance_create_layer(flash_x_offset,flash_y_offset,"Game_Objects",o_flash);
        with flash{
            sprite_index = s_flash_5;
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
        repeat(6){
            bullet = instance_create_layer(bullet_x_offset,bullet_y_offset,"Game_Objects",o_bullet_5);
            with bullet{
                speed = 20;
                direction = other.image_angle + random_range(-4, 4);
                image_angle = direction;
                if global.facing == 1{
                    image_yscale = 1;
                }
                else if global.facing == -1{
                    image_yscale = -1;
                }
                player = "Player";
            }
        }
        effect_create_above(ef_smokeup,bullet_x_offset,bullet_y_offset,0,c_ltgray);
        reload_state = "Rest";
        image_speed = 0.35;
        alarm[1] = 30;
        alarm[2] = 40;
        ammo -= 1;
    }
    else if reload_state == "Out" and total_ammo > 0 and image_index == 0{
        event_user(0);
    }
}

