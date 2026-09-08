//scr_ai_move(run_spr,stand_spr,)
if instance_exists(o_player){
    //player to the left
    if !place_meeting(x, y, o_water){
        if o_player.x < x{
            if (collision_line(x - walk_speed - 7, y + 10, x - walk_speed - 7, y + 300, o_blockP, false, true) or collision_line(x - 35, y, x - 35, y + 300, o_blockP, false, true)) and !collision_line(x - walk_speed - 7, y, x - walk_speed - 7, y + 300, o_hazardP, false, true){
                if !place_free(x, y + walk_speed + 1){
                    if place_free(x - walk_speed, y + walk_speed){ //down a slope of 1
                        x -= walk_speed;
                        y += walk_speed; 
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                    else if place_free(x - walk_speed, y + walk_speed / 2){ //down a slope of 1/2
                        x -= walk_speed;
                        y += walk_speed / 2; 
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                    else if place_free(x - walk_speed, y){ //forward
                        x -= walk_speed;
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                    else if place_free(x - walk_speed, y - walk_speed / 2){ //up a slope of 1
                        x -= walk_speed;
                        y -= walk_speed / 2; 
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                    else if place_free(x - walk_speed, y - walk_speed){ //up a slope of 1/2
                        x -= walk_speed;
                        y -= walk_speed;
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                }
                else if place_free(x - walk_speed, y){   //though this seems unneeded, the player sometimes gets stuck if it is not there.
                    x -= walk_speed;
                }
            }
            else{
                sprite_index = argument0;
                image_index = 0
                image_speed = 0;
            }
            if can_jump == true and !place_free(x, y + 1){
                if !collision_line(x - walk_speed - 7, y + 10, x - walk_speed - 7, y + 300, o_blockP, false, true) and collision_line(x - 35, y, x - 35, y + 300, o_blockP, false, true){
                    vspeed -= jump_power;
                    can_jump = false;
                }
                if !place_free(x - walk_speed, y - 15) and place_free(x - walk_speed, y - 70){
                    vspeed -= jump_power;
                    can_jump = false;
                }
            }
        }
    //player to the right
        else if o_player.x > x{
            if (collision_line(x + walk_speed + 7, y + 10, x + walk_speed + 7, y + 300, o_blockP, false, true) or collision_line(x + 35, y, x + 35, y + 300, o_blockP, false, true)) and !collision_line(x + 8, y, x + 8, y + 300, o_hazardP, false, true){
                if !place_free(x, y + walk_speed + 1){
                    if place_free(x + walk_speed, y + walk_speed){ //down a slope of 1
                        x += walk_speed;
                        y += walk_speed; 
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                    else if place_free(x + walk_speed, y + walk_speed / 2){ //down a slope of 1/2
                        x += walk_speed;
                        y += walk_speed / 2; 
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                    else if place_free(x + walk_speed, y){ //forward
                        x += walk_speed;
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                    else if place_free(x + walk_speed, y - walk_speed / 2){ //up a slope of 1
                        x += walk_speed;
                        y -= walk_speed; 
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                    else if place_free(x + walk_speed, y - walk_speed){ //up a slope of 1/2
                        x += walk_speed;
                        y -= walk_speed / 2;
                        sprite_index = argument0; 
                        image_speed = 0.25;
                    }
                }
                else if place_free(x + walk_speed, y){   //though this seems unneeded, the player sometimes gets stuck if it is not there.
                    x += walk_speed;
                }
            }
            else{
                sprite_index = argument0;
                image_index = 0
                image_speed = 0;
            }
            if can_jump == true and !place_free(x, y + 1){
                if !collision_line(x + walk_speed + 7, y + 10, x - walk_speed + 7, y + 300, o_blockP, false, true) and collision_line(x + 35, y, x + 35, y + 300, o_blockP, false, true){
                    vspeed -= jump_power;
                    can_jump = false;
                }
                if !place_free(x + walk_speed, y - 15) and place_free(x + walk_speed, y - 70){
                    vspeed -= jump_power;
                    can_jump = false;
                }
            }
        }
    }
    else if place_meeting(x, y, o_water){
        if o_player.x < x{
            if place_free(x - walk_speed * (5 / 8), y + walk_speed * (5 / 8)){ //down a slope of 1
                x -= walk_speed * (5 / 8);
                y += walk_speed * (5 / 8); 
                sprite_index = argument0; 
                image_speed = 0.125;
            }
            else if place_free(x - walk_speed * (5 / 8), y + (walk_speed * (5 / 8)) / 2){ //down a slope of 1/2
                x -= walk_speed * (5 / 8);
                y += (walk_speed * (5 / 8)) / 2; 
                sprite_index = argument0; 
                image_speed = 0.125;
            }
            else if place_free(x - walk_speed * (5 / 8), y){ //forward
                x -= walk_speed * (5 / 8);
                sprite_index = argument0; 
                image_speed = 0.125;
            }
            else if place_free(x - walk_speed * (5 / 8), y - (walk_speed * (5 / 8)) / 2){ //up a slope of 1
                x -= walk_speed * (5 / 8);
                y -= (walk_speed * (5 / 8)) / 2; 
                sprite_index = argument0; 
                image_speed = 0.125;
            }
            else if place_free(x - walk_speed * (5 / 8), y - walk_speed * (5 / 8)){ //up a slope of 1/2
                x -= walk_speed * (5 / 8);
                y -= walk_speed * (5 / 8);
                sprite_index = argument0; 
                image_speed = 0.125;
            }
        
            if can_swim == true{
                if o_player.y < y{
                    vspeed -= jump_power / 2;
                    alarm[1] = 35;
                    can_swim = false;
                }
                if distance_to_object(o_blockP) > distance_to_object(o_hazardP) and collision_line(x, y, x, y + 300, o_hazardP, false, true){
                    vspeed -= jump_power / 2;
                    alarm[1] = 35;
                    can_swim = false;
                }
                if !collision_line(x, y, x, y + 500, o_blockP, false, true){
                    vspeed -= jump_power / 2;
                    alarm[1] = 35;
                    can_swim = false;
                }
            }
        }
        //player to the right
        if o_player.x > x{
            if place_free(x + walk_speed * (5 / 8), y + walk_speed * (5 / 8)){ //down a slope of 1
                x += walk_speed * (5 / 8);
                y += walk_speed * (5 / 8); 
                sprite_index = argument0; 
                image_speed = 0.125;
            }
            else if place_free(x + walk_speed * (5 / 8), y + (walk_speed * (5 / 8)) / 2){ //down a slope of 1/2
                x += walk_speed * (5 / 8);
                y += (walk_speed * (5 / 8)) / 2; 
                sprite_index = argument0; 
                image_speed = 0.125;
            }
            else if place_free(x + walk_speed * (5 / 8), y){ //forward
                x += walk_speed * (5 / 8);
                sprite_index = argument0; 
                image_speed = 0.125;
            }
            else if place_free(x + walk_speed * (5 / 8), y - (walk_speed * (5 / 8)) / 2){ //up a slope of 1
                x += walk_speed * (5 / 8);
                y -= (walk_speed * (5 / 8)) / 2; 
                sprite_index = argument0; 
                image_speed = 0.125;
            }
            else if place_free(x + walk_speed * (5 / 8), y - walk_speed * (5 / 8)){ //up a slope of 1/2
                x += walk_speed * (5 / 8);
                y -= walk_speed * (5 / 8);
                sprite_index = argument0; 
                image_speed = 0.125;
            }
            if can_swim == true{
                if o_player.y < y{
                    vspeed -= jump_power / 2;
                    alarm[1] = 35;
                    can_swim = false;
                }
                if distance_to_object(o_blockP) > distance_to_object(o_hazardP) and collision_line(x, y, x, y + 300, o_hazardP, false, true){
                    vspeed -= jump_power / 2;
                    alarm[1] = 35;
                    can_swim = false;
                }
                if !collision_line(x, y, x, y + 500, o_blockP, false, true){
                    vspeed -= jump_power / 2;
                    alarm[1] = 35;
                    can_swim = false;
                }
            }
        }
    }
}
