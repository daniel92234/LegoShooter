if player == "Enemy" or player == "Neutral"{
    with instance_create_layer(x,y,"Game_Objects",o_exp_G_1_area){
        player = other.player;
        alarm[0] = 2;
    }
    instance_destroy();
}

