//making sure the head is looking where it's supposed to be
if parent.facing == 1{
    image_xscale = 1;
}
else if parent.facing == -1{
    image_xscale = -1;
}
if instance_exists(o_player){
    x = o_player.x;
    y = o_player.y - 13;
}

