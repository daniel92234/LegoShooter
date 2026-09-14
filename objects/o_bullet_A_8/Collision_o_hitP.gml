if other.solid == true{
    move_contact_solid(direction,speed);
    speed = 0;
    event_user(0);
	event_user(1);
    with other{
        hit = other.id;
        scr_hit_check_bullet();
    }
}

