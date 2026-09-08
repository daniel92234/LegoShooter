/// @description  Variables affected by power-ups
walk_speed = 4 + walk_speed_mod;
jump_power = 7 + jump_power_mod;
global.shield_max = 50 + over_shield;
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

//gravity stuff
gravity_direction = 270;
if place_free(x, y + 1){
    if !place_meeting(x, y, o_water){
        gravity = global.world_gravity; 
    }
    else if place_meeting(x, y, o_water){
        gravity = global.world_gravity * (2 / 5); 
    }
}
else{
    gravity = 0; 
}
//control the falling
if vspeed > 12{
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
if !place_meeting(x, y, o_gunP){
    gun_ground = false;
}
if keyboard_check(ord("S")){
    crouching = true;
}
else if !keyboard_check(ord("S")){
    crouching = false;
}
if keyboard_check(ord("A")) or keyboard_check(ord("D")){
    walking = true;
}
else if !(keyboard_check(ord("A")) and keyboard_check(ord("D"))){
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
if !place_free(x, y + 2){
    if walking == true and crouching == false{
        sprite_index = s_player_run;
        mask_index = m_player;
        if !place_meeting(x, y, o_water){
            image_speed = 0.3;
        }
        else if place_meeting(x, y, o_water){
            image_speed = 0.15;
        }
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
    if keyboard_check(ord("A")){
        if !place_meeting(x, y, o_water){
            if !place_free(x, y + walk_speed + 1){
                if place_free(x - walk_speed, y + walk_speed){ //45-degree slope down
                    x -= walk_speed;
                    y += walk_speed;
                }
                else if place_free(x - walk_speed, y + walk_speed / 2){ //30-degree slope down
                    x -= walk_speed; 
                    y += round(walk_speed / 2);
                }
                else if place_free(x - walk_speed, y){ //flat
                    x -= walk_speed;
                }
                else if place_free(x - walk_speed, y - walk_speed / 2){ //30-degree slope up
                    x -= walk_speed;
                    y -= round(walk_speed / 2);
                }
                else if place_free(x - walk_speed, y - walk_speed){ //45-degree slope up
                    x -= walk_speed;
                    y -= walk_speed;
                }
            }
            else if place_free(x - walk_speed, y){   //though this seems unneeded, the player sometimes gets stuck if it is not there.
                x -= walk_speed;
            }
        }
        else if place_meeting(x, y, o_water){
            if !place_free(x, y + walk_speed * (5 / 8) + 1){
                if place_free(x - walk_speed * (5 / 8), y + walk_speed * (5 / 8)){ //45-degree slope down
                    x -= walk_speed * (5 / 8);
                    y += walk_speed * (5 / 8);
                }
                else if place_free(x - walk_speed * (5 / 8), y + (walk_speed * (5 / 8)) / 2){ //30-degree slope down
                    x -= walk_speed * (5 / 8);
                    y += (walk_speed * (5 / 8)) / 2;
                }
                else if place_free(x - walk_speed * (5 / 8), y){ //flat
                    x -= walk_speed * (5 / 8);
                }
                else if place_free(x - walk_speed * (5 / 8), y - (walk_speed * (5 / 8)) / 2){ //30-degree slope up
                    x -= walk_speed * (5 / 8);
                    y -= (walk_speed * (5 / 8)) / 2;
                }
                else if place_free(x - walk_speed * (5 / 8), y - walk_speed * (5 / 8)){ //45-degree slope up
                    x -= walk_speed * (5 / 8);
                    y -= walk_speed * (5 / 8);
                }
            }
            else if place_free(x - walk_speed * (5 / 8), y){   //though this seems unneeded, the player sometimes gets stuck if it is not there.
                x -= walk_speed * (5 / 8);
            }
        }
    }
    else if keyboard_check(ord("D")){
        if !place_meeting(x, y, o_water){
            if !place_free(x, y + walk_speed + 1){
                if place_free(x + walk_speed, y + walk_speed){ //45-degree slope down
                    x += walk_speed;
                    y += walk_speed;
                }
                else if place_free(x + walk_speed, y + walk_speed / 2){ //30-degree slope down
                    x += walk_speed; 
                    y += round(walk_speed / 2);
                }
                else if place_free(x + walk_speed, y){ //flat
                    x += walk_speed;
                }
                else if place_free(x + walk_speed, y - walk_speed / 2){ //30-degree slope up
                    x += walk_speed;
                    y -= round(walk_speed / 2);
                }
                else if place_free(x + walk_speed, y - walk_speed){ //45-degree slope up
                    x += walk_speed;
                    y -= walk_speed;
                }
            }
            else if place_free(x + walk_speed, y){   //though this seems unneeded, the player sometimes gets stuck if it is not there.
                x += walk_speed;
            }
        }
        else if place_meeting(x, y, o_water){
            if !place_free(x, y + walk_speed * (5 / 8) + 1){
                if place_free(x + walk_speed * (5 / 8), y + walk_speed * (5 / 8)){ //45-degree slope down
                    x += walk_speed * (5 / 8);
                    y += walk_speed * (5 / 8);
                }
                else if place_free(x + walk_speed * (5 / 8), y + (walk_speed * (5 / 8)) / 2){ //30-degree slope down
                    x += walk_speed * (5 / 8);
                    y += (walk_speed * (5 / 8)) / 2;
                }
                else if place_free(x + walk_speed * (5 / 8), y){ //flat
                    x += walk_speed * (5 / 8);
                }
                else if place_free(x + walk_speed * (5 / 8), y - (walk_speed * (5 / 8)) / 2){ //30-degree slope up
                    x += walk_speed * (5 / 8);
                    y -= (walk_speed * (5 / 8)) / 2;
                }
                else if place_free(x + walk_speed * (5 / 8), y - walk_speed * (5 / 8)){ //45-degree slope up
                    x += walk_speed * (5 / 8);
                    y -= walk_speed * (5 / 8);
                }
            }
            else if place_free(x + walk_speed * (5 / 8), y){   //though this seems unneeded, the player sometimes gets stuck if it is not there.
                x += walk_speed * (5 / 8);
            }
        }
    }
}

/// Shield Recharge
if add_shield_point == true and global.shield < global.shield_max{
    if over_shield > 0{
        global.shield -= 1;
    }
    else{
        global.shield += 1;
    }
    alarm[1] = 25;
    add_shield_point = false;
}
if over_shield > 0 and global.shield <= 50{
    over_shield = 0;
}
if global.shield > global.shield_max{
    global.shield = global.shield_max;
}
if global.shield < 0{
    global.shield = 0;
}

