if destroyed == true{
    if create_pieces == 1{
        with instance_create_layer(x + 48,y + 19,"Game_Objects",o_bit){
            sprite_index = s_part_trash_top_green;
            image_index = 0;
            image_speed = 0;
            hspeed = random_range(-2.5, 2.5);
            vspeed = random_range(-5.5, -3);
            if hspeed > 0{
                image_angle -= (speed / 2);
            }
            else if hspeed < 0{
                image_angle += (speed / 2);
            }
			depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_DEBRIS;
        }
        with instance_create_layer(x + 35,y + 41,"Game_Objects",o_bit){
            sprite_index = s_part_trash_body_green;
            image_index = 0;
            image_speed = 0;
            hspeed = random_range(-2, 2);
            vspeed = random_range(-2, -1);
            if hspeed > 0{
                image_angle -= (speed / 2);
            }
            else if hspeed < 0{
                image_angle += (speed / 2);
            }
			depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_DEBRIS;
        }
        event_user(0);
        create_pieces = 0;
    }
    instance_destroy();
}
