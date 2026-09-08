if instance_exists(o_player){
    //player to the left
    if !place_meeting(x, y, o_water){
        if o_player.x > x{{
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
                else if place_free(x - walk_speed, y){   //though this seems unneeded, the player sometimes gets stuck if it is not there.
                    x -= walk_speed;
                }
            }
        }
    }
    //player to the right
        else if o_player.x < x{
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
    }
    else if place_meeting(x, y, o_water){
        if o_player.x > x{
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
        if o_player.x < x{
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
