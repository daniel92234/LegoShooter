if !place_meeting(x,y, o_water){
    gravity = global.world_gravity;
}
else if place_meeting(x,y, o_water){
    gravity = global.world_gravity * (2 / 5);
}
if hspeed > 0{
    image_angle -= (speed / 2);
}
else if hspeed < 0{
    image_angle += (speed / 2);
}

