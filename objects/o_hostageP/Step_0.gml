//gravity stuff
if place_free(x,y+1) {
if !place_meeting(x,y, o_water){
        gravity = global.world_gravity;
    }
    else if place_meeting(x,y, o_water){
        gravity = global.world_gravity * (2 / 5);
    }
gravity_direction = 270; 
} else {
gravity = 0; 
gravity_direction = 270;
}


