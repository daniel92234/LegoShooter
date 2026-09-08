if instance_exists(o_player) {
    if !(collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1)) {
        if (o_player.x > x) { //to the right
        image_xscale = 1;
        } else if (o_player.x < x) {
        image_xscale = -1;
        }
    }
}

