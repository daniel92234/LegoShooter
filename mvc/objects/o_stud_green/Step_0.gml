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
        sprite_index = s_stud_green;
}
if state = 0 {
exit;
} else if (state = 1) {
    mask_index = blank;
    if distance_to_point(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+50) < 10 {
    global.score += 100;
    instance_destroy();
    } else if distance_to_point(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+50) >= 10 {
    spd += 0.2;
    move_towards_point(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+50,spd);
    }
}

