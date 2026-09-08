//move around
if instance_exists(o_player){
    if enemy_var == "Normal" or enemy_var == "Shield"{
        if guard == false and alert == true{
            if distance_to_object(o_player) > close_dist + 3 and distance_to_object(o_player) < far_dist{
                scr_ai_move(asset_get_index("s_enemy_run_" + string(argument0)));
            }
            else if distance_to_object(o_player) < close_dist - 3{
                scr_ai_away(asset_get_index("s_enemy_run_" + string(argument0)));
            }
            else if distance_to_object(o_player) > close_dist + 3 and distance_to_object(o_player) < close_dist - 3{
                hspeed = 0;
                sprite_index = asset_get_index("s_enemy_stand_" + string(argument0));
            }
        }
        if vspeed > 12 {
            vspeed = 12;
        }
        if !place_meeting(x, y, o_water){
            if hspeed > 0{
                hspeed -= 0.5
            }
            else if hspeed < 0{
                hspeed += 0.5
            }
        }
        else if place_meeting(x, y, o_water){
            if hspeed > 0{
                hspeed -= 1.5
            }
            else if hspeed < 0{
                hspeed += 1.5
            }
        }
        gravity_direction = 270;
        if place_free(x, y + 1){
            if !place_meeting(x, y, o_water){
                gravity = global.world_gravity;
            }
            else if place_meeting(x, y, o_water){
                gravity = global.world_gravity * (2 / 5);
            }
            gravity_direction = 270; 
            sprite_index = asset_get_index("s_enemy_jump_" + string(argument0));
        }
        else{
            gravity = 0; 
        }
        if alert == false{
            hspeed = 0; 
            image_speed = 0; 
            image_index = 0; 
            sprite_index = asset_get_index("s_enemy_stand_" + string(argument0));
        }
        with my_arm{
            x = other.x; 
            y = other.y;
        }
        with my_other_arm{
            x = other.x; 
            y = other.y;
        }
    }
    if enemy_var == "Jetpack"{
        if alert == true{
            jetpacking = true;
        }
        if jetpacking == true{
            sprite_index = asset_get_index("s_enemy_jump_jetpack_" + string(argument0));
            gravity = 0
            if o_player.my_head.image_yscale = -1{
                space = -150;
            }
            else if o_player.my_head.image_yscale = 1{
                space = 150;
            }
            if instance_nearest(x, y, o_enemy_alienP){
                inst = other.object_index;
            }
            else if instance_nearest(x, y, o_blockP){
                inst = other.object_index;
            }
            else if instance_nearest(x, y, o_hazardP){
                inst = other.object_index;
            }
            else{
                inst = noone;
            }
            mp_potential_settings(30, 10, 7, true);
            mp_potential_step_object(o_player.x + space, o_player.y - 300, 2.8, inst);
        }
        if jetpacking == false{
            if vspeed > 12 {
                vspeed = 12;
            }
            gravity_direction = 270;
            if place_free(x, y + 1){
                if !place_meeting(x, y, o_water){
                    gravity = global.world_gravity;
                }
                else if place_meeting(x, y, o_water){
                    gravity = global.world_gravity * (2 / 5);
                }
                gravity_direction = 270; 
            }
            else{
                gravity = 0;
            }
            sprite_index = asset_get_index("s_enemy_stand_jetpack_" + string(argument0));
        }
        with my_arm{
            x = other.x; 
            y = other.y;
        }
        with my_other_arm{
            x = other.x; 
            y = other.y;
        }
    }
}
