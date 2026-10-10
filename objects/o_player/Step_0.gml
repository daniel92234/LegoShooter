//Variables affected by power-ups
walk_speed = 4 + walk_speed_mod;
jump_power = 7 + jump_power_mod;
shield_max = 50 + over_shield;
if walk_ticker > 0{
    walk_ticker -= 1;
}
if jump_ticker > 0{
    jump_ticker -= 1;
}
if damage_ticker > 0{
    damage_ticker -= 1;
}
if walk_ticker == 0{
    walk_speed_mod = 0;
}
if jump_ticker == 0{
    jump_power_mod = 0;
}
if damage_ticker == 0{
    damage_multiplier = 1;
}

in_water = place_meeting(x, y, o_water);

if place_free(x, y + 2){
	state = "Air"
}
else{
	state = "Ground"
}

//gravity stuff
if state == "Air"{
    if !in_water{
        gravity = global.world_gravity; 
    }
    else{
        gravity = global.world_gravity *  global.water_gravity_multiplier; 
    }
}
else if state == "Ground"{
    gravity = 0;
}

//control the falling
if vspeed > 12{
    vspeed = 12;
}
if !in_water{
    if hspeed > 0{
        hspeed -= 0.5
    }
    else if hspeed < 0{
        hspeed += 0.5
    }
}
else{
    if hspeed > 0{
        hspeed -= 1.5
    }
    else if hspeed < 0{
        hspeed += 1.5
    }
}
if !place_meeting(x, y, o_gunP){
    gun_ground = noone;
}
if keyboard_check(ord("S")){
    crouching = true;
}
else{
    crouching = false;
}
if keyboard_check(ord("A")) or keyboard_check(ord("D")){
    walking = true;
}
else {
    walking = false;
}
if keyboard_check_pressed(ord("S")){
    y += 8;
    with gun_slot_1{
        y += 8;
    }
}
else if keyboard_check_released(ord("S")){
    y -= 8;
    with gun_slot_1{
        y -= 8;
    }
}
if y <= room_height + 42{
    o_player_control.alarm[0] = 20;
}

// sprite stuff
if state == "Ground"{
    if walking == true and crouching == false{
        sprite_index = s_player_run;
        mask_index = m_player;
        image_speed = 0.3 * power(global.water_movement_reduction, in_water);
    }
    else if walking == false and crouching == false{
        sprite_index = s_player_stand;
        mask_index = m_player;
        image_speed = 0;
    }
    else if crouching == true{
        sprite_index = s_player_crouch;
        mask_index = m_player_crouch;
        image_speed = 0;
    }
}
else{
    sprite_index = s_player_jump;
    mask_index = m_player;
    image_speed = 0;
}

if crouching == false{
	var movement = ceil(walk_speed * power(global.water_movement_reduction, in_water))
    if keyboard_check(ord("A")){
        if state == "Ground"{
            if place_free(x - movement, y + movement){ //45-degree slope down
                x -= movement;
                y += movement;
            }
            else if place_free(x - movement, y + movement / 2){ //30-degree slope down
                x -= movement; 
                y += movement / 2;
            }
            else if place_free(x - movement, y){ //flat
                x -= movement;
            }
            else if place_free(x - movement, y - movement / 2){ //30-degree slope up
                x -= movement;
                y -= movement / 2;
            }
            else if place_free(x - movement, y - movement){ //45-degree slope up
                x -= movement;
                y -= movement;
            }
        }
        else if place_free(x - movement, y) and state == "Air"{
            x -= movement; // Movement while not on ground
        }
		else{
			
		}
    }
    else if keyboard_check(ord("D")){
        if state == "Ground"{
            if place_free(x + movement, y + movement){ //45-degree slope down
                x += movement;
                y += movement;
            }
            else if place_free(x + movement, y + ceil(movement / 2)){ //30-degree slope down
                x += movement; 
                y += ceil(movement / 2);
            }
            else if place_free(x + movement, y){ //flat
                x += movement;
            }
            else if place_free(x + movement, y - ceil(movement / 2)){ //30-degree slope up
                x += movement;
                y -= ceil(movement / 2);
            }
            else if place_free(x + movement, y - movement){ //45-degree slope up
                x += movement;
                y -= movement;
            }
        }
        else if place_free(x + movement, y) and state == "Air"{ // Movement while not on ground
            x += movement;
        }
    }
}

/// Shield Recharge
if add_shield_point == true and shield < shield_max{
    if over_shield > 0{
        shield -= 1;
    }
    else{
        shield += 1;
    }
    alarm[1] = 25;
    add_shield_point = false;
}
if over_shield > 0 and shield <= 50{
    over_shield = 0;
}
if shield > shield_max{
    shield = shield_max;
}
if shield < 0{
    shield = 0;
}
