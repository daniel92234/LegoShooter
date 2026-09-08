if instance_exists(o_player){
    bullet = instance_create(bullet_x_offset, bullet_y_offset, o_bullet_3);
    with bullet{
        speed = 15;
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
    scr_shell_enemy(23, -9, s_shell_1, random_range(6, 8));
    image_speed = 1;
}

