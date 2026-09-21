if player == "Neutral" or player == "Enemy"{
    event_user(2);
    with other{
        hit = other.id;
        scr_hit_check_bullet();
    }
    instance_destroy();
}

