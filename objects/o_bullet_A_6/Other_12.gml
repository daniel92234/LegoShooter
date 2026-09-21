/// @description  Trail Effect
repeat(15 + random(7)){
    with instance_create_layer(x,y,"Game_Objects",o_trail_A_6){
        direction = other.direction + 180+30-random(60);
        speed = 3 + random(2);
    }
}

