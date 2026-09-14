if player == "Enemy" or player == "Neutral"{
	move_contact_all(direction,speed);
    speed = 0;
    with other{
        hit = other.id;
        scr_hit_check_bullet();
    }
}

