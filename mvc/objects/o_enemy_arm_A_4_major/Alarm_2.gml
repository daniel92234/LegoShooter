if instance_exists(o_player){
    flash = instance_create(flash_x_offset, flash_y_offset,o_flash);
    with flash{
        sprite_index = s_flash_A_4;
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
    bullet = instance_create(bullet_x_offset1, bullet_y_offset1, o_bullet_A_4);
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
    bullet = instance_create(bullet_x_offset2, bullet_y_offset2, o_bullet_A_4);
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
    bullet = instance_create(bullet_x_offset3, bullet_y_offset3, o_bullet_A_4);
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
    image_speed = 1;
}

