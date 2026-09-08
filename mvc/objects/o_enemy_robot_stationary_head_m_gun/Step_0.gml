bullet_x_offset = x + lengthdir_x(real_x_bullet, image_angle) - lengthdir_y(real_y_bullet * sign(image_yscale), image_angle);
bullet_y_offset = y + lengthdir_y(real_x_bullet, image_angle) + lengthdir_x(real_y_bullet * sign(image_yscale), image_angle);
flash_x_offset = x + lengthdir_x(real_x_flash, image_angle) - lengthdir_y(real_y_flash * sign(image_yscale), image_angle);
flash_y_offset = y + lengthdir_y(real_x_flash, image_angle) + lengthdir_x(real_y_flash * sign(image_yscale), image_angle);
if instance_exists(o_player){
    door = collision_line(x, y, o_player.x, o_player.y, o_doorP, false, true);
    door_is_opened = false;
    if door != noone{
        if door.opened == true{
            door_is_opened = true;
        }
        else{
            door_is_opened = false;
        }
    }
    else{
        door_is_opened = true;
    }
    if (distance_to_object(o_player) < 600 and distance_to_object(o_player) > 100) //so if we're guarding a person, we will shoot from farther away
    and !(collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1)) and door_is_opened == true{
        if can_shoot == true{
            alarm[0] = 10;
            alarm[1] = 10;
            can_shoot = false;
        }
    }
    else{
        image_speed = 0;
    }
}
else{
        image_speed = 0;
}

