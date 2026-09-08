bullet_x_offset = x + lengthdir_x(bullet_x_real, image_angle) - lengthdir_y(bullet_y_real * sign(image_yscale), image_angle);
bullet_y_offset = y + lengthdir_y(bullet_x_real, image_angle) + lengthdir_x(bullet_y_real * sign(image_yscale), image_angle);
flash_x_offset = x + lengthdir_x(flash_x_real, image_angle) - lengthdir_y(flash_y_real * sign(image_yscale), image_angle);
flash_y_offset = y + lengthdir_y(flash_x_real, image_angle) + lengthdir_x(flash_y_real * sign(image_yscale), image_angle);
if shooting == false{
    image_speed = 0;
}
else if shooting == true{
    image_speed = 0.4;
}
if instance_exists(o_player){    
    if !(collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1)) 
    and distance_to_object(o_player) < range
    and can_fire == true and can_shoot == true{
        flash = instance_create(flash_x_offset, flash_y_offset,o_flash);
        with flash{
            sprite_index = s_flash_A_2;
            image_speed = 0.4;
            image_angle = other.image_angle;
            if other.image_yscale == 1{
                image_yscale = 1;
            }
            else if other.image_yscale == -1{
                image_yscale = -1;
            }
            owner = other.id
        }
        bullet = instance_create(bullet_x_offset, bullet_y_offset, o_bullet_A_2);
        with bullet{
            speed = 10;
            direction = other.image_angle;
            image_angle = direction;
            if other.image_yscale == 1{
                image_yscale = 1;
            }
            else if other.image_yscale == -1{
                image_yscale = -1;
            }
            player = "Enemy";
        }
        alarm[0] = 8;
        shooting = true;
        can_shoot = false;
    }
    if collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1){
        shooting = false;
    }
}
else{
    shooting = false;
}

