if instance_exists(o_player) {
    if (o_player.x < x) and (!(collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1))) {
    image_yscale =- 1;
    }
    if (o_player.x > x) and (!(collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1))) {
    image_yscale = 1;
    }
    if !(collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1)) {
    image_angle = point_direction(x,y,o_player.x,o_player.y);
    }
}
x = parent.gun_x_offset;
y = parent.gun_y_offset;

