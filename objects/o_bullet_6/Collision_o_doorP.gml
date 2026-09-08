if other.opened == false{
    move_contact_solid(direction,speed);
    speed = 0;
    with instance_create(x,y,o_exp_gun_6_area){
        alarm[0] = 2;
        player = other.player;
    }
instance_destroy();
}

