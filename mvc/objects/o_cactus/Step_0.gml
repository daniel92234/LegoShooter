if destroyed == true{
    if create_pieces == 1{
        repeat (6){
            with instance_create(x,y,o_bit){
                sprite_index = s_cactus_part;
                image_index = 1;
                image_speed = 0; hspeed = (-4 + random(8)) * 1.5;
                vspeed = (-4 - random(2)) * 1.5;
                direction = random(360);
            }
        }
        repeat (1){
            with instance_create(x,y,o_bit){
                sprite_index = s_cactus_part;
                image_index = 2;
                image_speed = 0; hspeed = (-4 + random(8)) * 1.5;
                vspeed = (-4 - random(2)) * 1.5;
                direction = random(360);
            }
        }
        repeat (3){
            with instance_create(x,y,o_bit){
                sprite_index = s_cactus_part;
                image_index = 0;
                image_speed = 0; hspeed = (-4 + random(8)) * 1.5;
                vspeed = (-4 - random(2)) * 1.5;
                direction = random(360);
            }
        }
        create_pieces = 0;
        instance_destroy();
    }
}

