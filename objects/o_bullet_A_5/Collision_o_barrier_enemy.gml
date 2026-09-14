if player == "Player" or player == "Neutral"{
    move_contact_all(direction, speed);
    speed = 0;
    with instance_create_layer(x,y,"Game_Objects",o_exp_gun_A_5_area){
        alarm[0] = 1;
        player = other.player;
    }
    instance_destroy();
}

