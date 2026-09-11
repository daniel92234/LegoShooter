if other.solid == true{
    with other{
        hit = other.id;
        scr_hit_check_bullet();
    }
    if bounces > 0{
        move_bounce_solid(false);
        bounces -= 1;
    }
    else if bounces == 0{
        move_contact_solid(direction,speed);
        speed = 0;
        event_user(0);
        event_user(1);
        instance_destroy();
    }
}

