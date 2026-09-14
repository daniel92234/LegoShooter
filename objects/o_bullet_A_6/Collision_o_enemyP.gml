if player == "Player" or player == "Neutral"{
	move_contact_all(direction,speed);
	event_user(1);
    with other{
        hit = other.id;
        scr_hit_check_bullet();
    }
    instance_destroy();
}

