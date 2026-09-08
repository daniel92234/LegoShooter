alarm[2] = 30;
if instance_exists(o_player) {
    if !(collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1)) and (distance_to_object(o_player) < range) {
    can_fire = 1;
    } else {
    can_fire = 0;
    shooting = 0;
    }
}

