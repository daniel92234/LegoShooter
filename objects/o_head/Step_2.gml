//making sure the head is looking where it's supposed to be
if global.facing == 1{
    image_yscale = 1;
}
else if global.facing == -1{
    image_yscale = -1;
}
if instance_exists(o_player){
    x = o_player.x;
    y = o_player.y - 13;
}

