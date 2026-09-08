if other.opened == false{
    if bounces > 0{
        move_bounce_all(1);
        bounces -= 1;
        speed = speed / 2;
    }
    else if bounces = 0{
        move_contact_all(direction, speed);
        speed = 0;
    }
}

