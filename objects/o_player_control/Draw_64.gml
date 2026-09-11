if instance_exists(o_player) {
        //draw HUD box
    draw_set_color(c_ltgray)
    draw_set_alpha(0.7)
    draw_rectangle(1,1,800-2,40,0)
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(1,1,800-2,40,1)
    draw_sprite(s_stud_silver,1,15,65)
    draw_text(30,50,string_hash_to_newline(global.game_score));
    draw_text(400,5,string_hash_to_newline(level));
    
    //draw health
    health_bar = (global.hp / global.hp_max) * 100;
    draw_healthbar(502, 9, 762, 27, health_bar, c_black, c_red, c_green, 0, true, true);
    if o_player.over_shield > 0{
        shield_bar = 100;
        over_shield_remain = global.shield - 50;
        over_shield_bar = (over_shield_remain / o_player.over_shield) * 100;
    }
    else{
        shield_bar = (global.shield / global.shield_max) * 100;
    }
    if o_player.over_shield > 0{
        draw_healthbar(502, 21, 762, 27, shield_bar, c_black, c_red, c_blue, 0, false, true);
        draw_healthbar(502, 21, 762, 27, over_shield_bar, c_black, c_lime, c_lime, 0, false, true);
    }
    else{
        draw_healthbar(502, 21, 762, 27, shield_bar, c_black, c_red, c_blue, 0, false, true);
    }
    
    //draw grenades and key (if we have one)
    draw_sprite(s_grenadeF,0,220,16)
    draw_text(230,5,string_hash_to_newline(global.grenades))
    if global.key = true {
        draw_sprite(s_key,0,190,16)
    }
    if instance_exists(weapon_ground){
        draw_set_alpha(1);
        draw_set_color(c_black);
        draw_text(5,565,string_hash_to_newline("Press E to Pickup: " + string(weapon_ground.gun_shortname)));
        if object_get_parent(weapon_ground.object_index) == o_gun_energyP{
            draw_set_color(c_green);
            draw_text(5,580,string_hash_to_newline(string(weapon_ground.per) + "% Charged"));
        }
        draw_set_alpha(1);
        draw_set_color(c_black);
    }
    if instance_exists(pickup_gun){
        if dialouge[1] > 0{
            dialouge[2] = 0
            dialouge[1]--;
            if dialouge[1] > 100{
                draw_set_alpha(1);
            }
            else{
                draw_set_alpha(dialouge[1]/100);
            }
            draw_set_color(c_black)
            if o_player.change == 1{
                draw_text(48,80,string_hash_to_newline("Picked up " 
                    + string(o_player.change) + " " 
                    + string(pickup_gun.clip_name_single) + " for " 
                    + string(pickup_gun.gun_name) + "."))
            }
            else{
                draw_text(48,80,string_hash_to_newline("Picked up " 
                    + string(o_player.change) + " " 
                    + string(pickup_gun.clip_name) + " for " 
                    + string(pickup_gun.gun_name) + "."))
            }
            draw_set_alpha(1);
            draw_set_color(c_black);
        }
    }
    if instance_exists(gun_picked_up){
        if dialouge[2] > 0{
            dialouge[1] = 0
            dialouge[2]--;
            if dialouge[2] > 100{
                draw_set_alpha(1);
            }
            else{
                draw_set_alpha(dialouge[2]/100);
            }
            draw_set_color(c_black)
            draw_text(48,80,string_hash_to_newline("Picked up " 
                + string(gun_picked_up.gun_name) + "."))
            draw_set_alpha(1);
            draw_set_color(c_black);
        }
    }
}

if instance_exists(o_player) {    
    if (o_player.slot = 1) {
        if object_get_parent(weapon1.object_index) == o_gun_energyP{
            if (weapon1.ammo > 0) { 
                weapon1.per = round((weapon1.ammo / weapon1.ammo_max) * 100);
                draw_set_color(c_green)
                draw_text(45,5,string_hash_to_newline(string(weapon1.per) + "%"));
                draw_healthbar(25, 30, 90, 35, weapon1.per, c_black, make_colour_rgb(0, 50, 0), c_lime, 0, true, true);
                draw_set_color(c_black)
            }
            else if (weapon1.ammo <= 0) and (weapon1.reload_state = "Out"){
                draw_set_color(c_white); 
                draw_text(40,12,string_hash_to_newline("Out of ammo..."));
                draw_set_color(c_black);
            }
        }
        else{
            draw_text(5,7,string_hash_to_newline(weapon1.total_ammo));
            if (weapon1.ammo >= 0) { 
                if !(weapon1.reload_state = "Reloading") and ((weapon1.total_ammo > 0) or (weapon1.ammo > 0)) {
                    if (weapon1.total_ammo >= 0) {
                        draw_sprite_ext(weapon1.clip_spr,weapon1.ammo,45,20,1,1,0,c_white,1);
                    }
                }
                else if (weapon1.reload_state = "Reloading") {
                    draw_set_color(c_white); 
                    draw_text(45,6,string_hash_to_newline("Reloading..."));
                    draw_set_color(c_black);
                }
                else if (weapon1.total_ammo <= 0) and (weapon1.ammo <= 0) and (weapon1.reload_state = "Out"){
                    draw_set_color(c_white); 
                    draw_text(45,12,string_hash_to_newline("Out of ammo..."));
                    draw_set_color(c_black);
                }
            }
        }
    }
    
    if (o_player.slot = 2) {
        if object_get_parent(weapon2.object_index) == o_gun_energyP{
            if (weapon2.ammo > 0) { 
                weapon2.per = round((weapon2.ammo / weapon2.ammo_max) * 100);
                draw_set_color(c_green)
                draw_text(45,5,string_hash_to_newline(string(weapon2.per) + "%"));
                draw_healthbar(25, 30, 90, 35, weapon2.per, c_black, make_colour_rgb(0, 50, 0), c_lime, 0, true, true);
                draw_set_color(c_black)
            }
            else if (weapon2.ammo <= 0) and (weapon2.reload_state = "Out"){
                draw_set_color(c_white); 
                draw_text(40,12,string_hash_to_newline("Out of ammo..."));
                draw_set_color(c_black);
            }
        }
        else{
            draw_text(5,7,string_hash_to_newline(weapon2.total_ammo));
            if (weapon2.ammo >= 0) { 
                if !(weapon2.reload_state = "Reloading") and ((weapon2.total_ammo > 0) or (weapon2.ammo > 0)){
                    if (weapon2.total_ammo >= 0) {
                        draw_sprite_ext(weapon2.clip_spr,weapon2.ammo,45,20,1,1,0,c_white,1);
                    }
                }
                else if (weapon2.reload_state = "Reloading") {
                    draw_set_color(c_white); 
                    draw_text(45,6,string_hash_to_newline("Reloading..."));
                    draw_set_color(c_black);
                }
                else if (weapon2.total_ammo <= 0) and (weapon2.ammo <= 0) and (weapon2.reload_state = "Out"){
                    draw_set_color(c_white); 
                    draw_text(45,12,string_hash_to_newline("Out of ammo..."));
                    draw_set_color(c_black);
                }
            }
        }
    }
}

if instance_exists(o_player) {    
    if (weapon1.slot = 1) { //slot 0
        if (weapon1.state = "Active") { //primary weapon
        draw_sprite_ext(weapon1.ground_spr,0,300,16,1,1,0,image_blend,1);
        } else if (weapon1.state = "Inactive") { //secondary weapon
        draw_sprite_ext(weapon1.ground_spr,0,300,16,0.7,0.7,0,image_blend,0.7);
        }
    } else if (weapon1.slot = 2) { //slot 0
        if (weapon1.state = "Active") { //primary weapon
        draw_sprite_ext(weapon1.ground_spr,0,350,16,1,1,0,image_blend,1);
        } else if (weapon1.state = "Inactive") { //secondary weapon
        draw_sprite_ext(weapon1.ground_spr,0,350,16,0.7,0.7,0,image_blend,0.7);
        }
    }
    
    if (weapon2.slot = 1) { //slot 0
        if (weapon2.state = "Active") { //primary weapon
        draw_sprite_ext(weapon2.ground_spr,0,300,16,1,1,0,image_blend,1);
        } else if (weapon2.state = "Inactive") { //secondary weapon
        draw_sprite_ext(weapon2.ground_spr,0,300,16,0.7,0.7,0,image_blend,0.7);
        }
    } else if (weapon2.slot = 2) { //slot 0
        if (weapon2.state = "Active") { //primary weapon
        draw_sprite_ext(weapon2.ground_spr,0,350,16,1,1,0,image_blend,1);
        } else if (weapon2.state = "Inactive") { //secondary weapon
        draw_sprite_ext(weapon2.ground_spr,0,350,16,0.7,0.7,0,image_blend,0.7);
        }
    }
}

