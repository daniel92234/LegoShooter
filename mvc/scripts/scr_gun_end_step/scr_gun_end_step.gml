if state == "Ground"{
    exit;
}
else if state == "Active"{
    x = o_player.x;
    y = o_player.y;
    if hit == false{
        image_angle = point_direction(x, y, mouse_x, mouse_y);
    }
    if global.facing == 1 {
        image_yscale = 1;
    }
    else if global.facing == -1 {
        image_yscale = -1;
    }
exit;
}
else if state == "Inactive"{
    x = o_player.x;
    y = o_player.y;
    exit;
}
