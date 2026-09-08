if destroyed == true{
    if create_pieces == 1{
        with instance_create_layer(x + 32,y + 14,"Game_Objects",o_bit){
            sprite_index = s_mail_top_part;
            image_index = 0;
            image_speed = 0;
            hspeed = random_range(-2, 2);
            vspeed = random_range(-3, -1);
            if hspeed > 0{
                image_angle -= (speed / 2);
            }
            else if hspeed < 0{
                image_angle += (speed / 2);
            }
        }
        event_user(0);
        create_pieces = 0;
    }
    image_index = 1;
}

