bullet_x_offset = x + lengthdir_x(bullet_x_real, image_angle) - lengthdir_y(bullet_y_real * sign(image_yscale), image_angle);
bullet_y_offset = y + lengthdir_y(bullet_x_real, image_angle) + lengthdir_x(bullet_y_real * sign(image_yscale), image_angle);
if instance_exists(o_player){    
    if !(collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1)) 
    and distance_to_object(o_player) < range
    and can_fire == true and can_shoot == true{
        bullet = instance_create(bullet_x_offset, bullet_y_offset, o_bullet_2);
        with bullet{
            speed = 13;
            direction = other.image_angle + random_range(-2.6, 2.6);
            image_angle = direction;
            if other.image_yscale == 1{
                image_yscale = 1;
            }
            else if other.image_yscale == -1{
                image_yscale = -1;
            }
            player = "Enemy";
        }
        alarm[0] = fire_rate;
        shooting = true;
        can_shoot = false;
        image_speed = 1;
        scr_shell_enemy(20, -4, s_shell_1, random_range(4, 6));
    }
    if collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1){
        shooting = false;
    }
}
else{
    shooting = false;
}

