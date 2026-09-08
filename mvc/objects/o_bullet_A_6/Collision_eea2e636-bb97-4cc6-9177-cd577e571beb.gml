if player == "Player" or player == "Neutral"{
    with other{
        hit = other.id;
        scr_hit_check_bullet();
    }
    event_user(0);
    event_user(1);
    instance_destroy();
}

