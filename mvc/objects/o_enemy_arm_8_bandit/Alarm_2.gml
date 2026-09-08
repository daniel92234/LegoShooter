if instance_exists(o_player){
    bullet = instance_create(bullet_x_offset, bullet_y_offset, o_bullet_8);
    with bullet{
        speed = 12;
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
    image_speed = 0.2;
}

