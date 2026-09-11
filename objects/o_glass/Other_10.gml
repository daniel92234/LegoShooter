if damage > 0{
    repeat(2){
        with instance_create_layer(hit.x, hit.y, "Game_Obejcts", o_bit){
            sprite_index = s_glass_part
            image_index = 1;
            image_speed = 0;
            direction = 160 - random(140);
            speed = 3 + random(5);
        }
    }
    hp -= damage;
}

