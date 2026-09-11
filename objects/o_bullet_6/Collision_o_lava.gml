move_contact_solid(direction,speed);
speed = 0;
with instance_create_layer(x,y,"Game_Objects",o_exp_gun_6_area){
    alarm[0] = 2;
    player = other.player;
}
instance_destroy();

