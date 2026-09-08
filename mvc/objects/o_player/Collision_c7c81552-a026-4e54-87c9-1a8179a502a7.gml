if slot == 1{
    if gun_slot_1.energy_based == true or gun_slot_1.total_ammo >= gun_slot_1.ammo_max{
        exit;
    }
    else if gun_slot_1.clip_size > 0{
        with gun_slot_1{
            total_ammo += 2 * clip_size;
        }
        if gun_slot_1.total_ammo > gun_slot_1.ammo_max{
            lost = -(gun_slot_1.total_ammo - gun_slot_1.ammo_max);
        }
        else{
            lost = 0;
        }
        change = 2 * gun_slot_1.clip_size + lost;
        o_player_control.dialouge[1] = 200;
        o_player_control.pickup_gun = gun_slot_1.id;
        with other{
            instance_destroy();
        }
    }
exit;
} 
else if slot == 2{
    if gun_slot_2.energy_based == true or gun_slot_2.total_ammo >= gun_slot_2.ammo_max{
        exit;
    }
    else if gun_slot_2.clip_size > 0{
        with gun_slot_2 {
            total_ammo += 2 * clip_size;
        }
        if gun_slot_2.total_ammo > gun_slot_2.ammo_max{
            lost = -(gun_slot_2.total_ammo - gun_slot_2.ammo_max);
        }
        else{
            lost = 0;
        }
        change = 2 * gun_slot_2.clip_size + lost;
        o_player_control.dialouge[1] = 200;
        o_player_control.pickup_gun = gun_slot_2.id;
        with other{
            instance_destroy();
        }
    }
exit;
}

