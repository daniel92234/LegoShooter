if state == "Ground" or state == "Inactive"{
    exit;
}
else if state == "Active"{
    if reload_state == "Out" and total_ammo > 0{
        event_user(0);
    }
}

