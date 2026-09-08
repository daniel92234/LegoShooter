if (hp <= 12){
    image_index = 1;
}
if (hp <= 0){
	parent.equip2 = "None"
    with instance_create_layer(center_x, center_y, "Game_Objects", o_bit){
        sprite_index = s_shield_part1;
        direction = random_range(0, 359);
        speed = 3 + random(5)
    }
    with instance_create_layer(center_x, center_y, "Game_Objects", o_bit){
        sprite_index = s_shield_part2;
        direction = random_range(0, 359);
        speed = 3 + random(5)
    }
    with instance_create_layer(center_x, center_y, "Game_Objects", o_bit){
        sprite_index = s_shield_part3;
        direction = random_range(0, 359);
        speed = 3 + random(5)
    }
    instance_destroy();
}

