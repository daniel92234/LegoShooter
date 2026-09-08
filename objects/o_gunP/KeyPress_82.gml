if state == "Active"{
    if ammo < clip_size and (reload_state == "Out" or reload_state == "Ready") and total_ammo > 0{
        event_user(0);
    }
}

