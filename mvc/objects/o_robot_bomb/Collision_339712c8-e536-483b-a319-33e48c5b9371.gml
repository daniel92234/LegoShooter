if player == "Neutral" or player == "Enemy"{
    with instance_create(x,y,o_exp_robot_bomb_area){
        alarm[0] = 2;
        player = other.player;
    }
    instance_destroy();
}

