if gravity_bound == true{
    if !place_meeting(x,y, o_water){
        gravity = global.world_gravity;
    }
    else if place_meeting(x,y, o_water){
        gravity = global.world_gravity * (2 / 5);
    }
    gravity_direction=270;
    bounces = 10;
    if start_blink == 1{
        alarm[0] = 300;
        start_blink = 0;
    }
}
else if gravity_bound == false{
    alarm[0] = -1;
}
if state == 1{
    mask_index = blank;
    var _cam = view_camera[0];
    var target_x = camera_get_view_x(_cam) + 5;
    var target_y = camera_get_view_y(_cam) + 50;
    if (point_distance(x, y, target_x, target_y) < 10) {
        global.game_score += score_value;
        instance_destroy();
    }
    else {
        spd += 0.2;
        move_towards_point(target_x, target_y, spd);
    }
}
