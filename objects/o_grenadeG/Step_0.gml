if !place_meeting(x,y, o_water){
    gravity = global.world_gravity;
}
else if place_meeting(x,y, o_water){
    gravity = global.world_gravity * global.water_gravity_multiplier;
}

