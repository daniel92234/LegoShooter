event_inherited();
gravity_direction = 270;
if !place_meeting(x, y, o_water){
gravity = global.world_gravity; 
}
else if place_meeting(x, y, o_water){
    gravity = global.world_gravity * (2 / 5); 
}

