if (place_meeting(x, y + 9, o_upP) or !place_free(x, y + 2)) and !place_meeting(x, y, o_water){
    vspeed =- jump_power;
}
else if place_meeting(x, y, o_water){
    vspeed =- jump_power / 2;
}

