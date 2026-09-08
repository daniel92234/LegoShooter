if player == "Neutral" or player == "Enemy"{
    with instance_create(x,y,o_exp_gun_9_area){
        alarm[0] = 2;
        player = other.player;
    }
    instance_destroy();
}

