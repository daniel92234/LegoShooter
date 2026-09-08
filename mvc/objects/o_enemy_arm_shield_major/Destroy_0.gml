if place_meeting(x,y,o_exp){
    with instance_create(x,y,o_bit){
        sprite_index = s_enemy_shield; 
        direction = 135-random(90);
    }
}
else if !place_meeting(x,y,o_exp){
    with instance_create(x,y,o_bit){
        sprite_index = s_enemy_shield;
        direction = 135-random(90);
        speed = 1+random(2)
    }
}

