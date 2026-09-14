if other.solid == true{
    if bounces > 0{
        move_bounce_solid(false);
        bounces -= 1;
    }
    else if bounces == 0{
        with instance_create_layer(x,y,"Game_Objects",o_exp_gun_9_area){
            alarm[0] = 2;
            player = other.player;
        }
    instance_destroy();
    }
}

