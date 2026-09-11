//making sure that the arm is pointing in the same direction that we're looking
if face_player == true{
    if instance_exists(o_player) {
        if o_player.x < x and !collision_line(x, y, o_player.x, o_player.y, o_blockP, 0, 1){
            image_xscale = -1;
        }
        else if o_player.x > x and !collision_line(x, y, o_player.x, o_player.y, o_blockP, 0, 1){
            image_xscale = 1;
        }
    }
}
else{
    if x > xprevious{
        image_xscale = 1;
    }
    else if x < xprevious{
        image_xscale = -1;
    }
}

