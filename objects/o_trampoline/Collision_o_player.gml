if other.y < y and other.vspeed > 0{
    with other{
        if !place_meeting(x, y, o_water){
            vspeed = -10;
        }
        else if place_meeting(x, y, o_water){
            vspeed = -5;
        }
    }
    image_speed = 0.5;
}

