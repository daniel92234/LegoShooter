if other.solid == true{
    if bounces > 0{
        move_bounce_solid(1);
        bounces -= 1;
        speed = speed / 2;
    }
    else if bounces == 0{
        move_contact_solid(direction, speed)
        speed = 0
    }
}
