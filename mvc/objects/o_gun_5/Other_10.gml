reload_state = "Reloading";
sprite_index = s_arm_gun_5_reload;
image_speed = 0.2;
ammo_missing = clip_size - ammo;
if ammo_missing > total_ammo{
    refillable_ammo = total_ammo;
}
else{
    refillable_ammo = ammo_missing;
}
alarm[0] = (refillable_ammo * 25) - 1;

