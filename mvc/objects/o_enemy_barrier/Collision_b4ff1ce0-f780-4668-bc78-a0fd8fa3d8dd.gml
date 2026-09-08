with other{
    if (place_meeting(x+walk_speed,y,other)) x -= walk_speed;
    if (place_meeting(x-walk_speed,y,other)) x += walk_speed;
}

