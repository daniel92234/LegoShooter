if player == "Player" or player == "Neutral"{
    with other{
        hit = other.id;
        scr_hit_check_bullet();
    }
    instance_destroy();
}

