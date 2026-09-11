if (hp <= 9) and (hp >= 5){
    image_index = 1;
}
else if (hp <= 4) and (hp >= 1){
    image_index = 2;
}
else if (hp <= 0){
    repeat(4+random(2)){
        with instance_create_layer(x, y, "Game_Obejcts", o_bit){
            sprite_index = s_glass_part
            image_index = choose(0, 1);
            image_speed = 0;
            direction = 160 - random(140);
            speed = 3 + random(5);
        }
    }
    instance_destroy();
}

