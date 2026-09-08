if state == "Ground" or state == "Inactive" {
    exit;
}
else if state == "Active" and (reload_state == "Ready" or reload_state == "Reloading" or reload_state == "Out") and hit == false and (hold_grenade == "Rest" or hold_grenade == "Ready"){
    if reload_state == "Reloading" and energy_based == false{
        alarm[0] = -1;
        if ammo == 0{
            reload_state = "Out";
        }
        else{
            reload_state = "Ready";
        }
    }
    sprite_index = gun_spr;
    image_speed = 0;
    image_index = 0;
    old_angle = image_angle;
    if global.facing == 1{
        image_angle = old_angle + 25;
    }
    else if global.facing == -1{
        image_angle = old_angle - 25;
    }
    hit = true;
    alarm[argument0] = 12;
}
