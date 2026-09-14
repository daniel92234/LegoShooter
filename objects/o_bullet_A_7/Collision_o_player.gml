if player == "Enemy" or player == "Neutral"{
    with other{
        hit = other.id;
        scr_hit_check_bullet();
    }
    if bounces > 0{
        move_bounce_all(false);
        bounces -= 1;
    }
    else if bounces == 0{
        move_contact_all(direction,speed);
        speed = 0;
        event_user(0);
        event_user(1);
		event_user(2);
        instance_destroy();
    }
}

