if instance_exists(o_player){
    bullet1 = instance_create(bullet_x_offset1, bullet_y_offset1, o_bullet_1);
    with bullet1{
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
    bullet2 = instance_create(bullet_x_offset2, bullet_y_offset2, o_bullet_1);
    with bullet2{
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
    scr_shell_enemy(25, -5, s_shell_1, random_range(5, 7));
    scr_shell_enemy(25, -3, s_shell_1, random_range(3, 5));
    image_speed = 1;
}

