if other.state = "Ground"{
    gun_ground = other.id;
    if gun_ground.energy_based == false{
        if (gun_ground.total_ammo > 0 or gun_ground.ammo > 0){
            if gun_ground.object_index == gun_slot_1.object_index and (gun_slot_1.total_ammo < gun_slot_1.ammo_max) and gun_slot_1.state == "Active"{
                ammo_to_give_potential = (gun_slot_1.ammo_max) - (gun_slot_1.total_ammo);
                if ammo_to_give_potential > gun_ground.total_ammo + gun_ground.ammo{
                    change = gun_ground.total_ammo + gun_ground.ammo;
                }
                else{
                    change = ammo_to_give_potential;
                }
                if gun_ground.total_ammo > 0{
                    if ammo_to_give_potential > gun_ground.total_ammo{
                        ammo_to_give_from_total = gun_ground.total_ammo;
                    }
                    else{
                        ammo_to_give_from_total = ammo_to_give_potential;
                    }
                    gun_slot_1.total_ammo += ammo_to_give_from_total;
                    gun_ground.total_ammo -= ammo_to_give_from_total;
                }
                if gun_ground.total_ammo == 0 and gun_ground.ammo > 0{
                    if ammo_to_give_potential > gun_ground.ammo{
                        ammo_to_give_from_clip = gun_ground.ammo;
                    }
                    else{
                        ammo_to_give_from_clip = ammo_to_give_potential;
                    }
                    gun_slot_1.total_ammo += ammo_to_give_from_clip;
                    gun_ground.ammo -= ammo_to_give_from_clip;
                }
                o_player_control.dialouge[1] = 200;
                o_player_control.pickup_gun = gun_slot_1.id;
            }
            if gun_ground.object_index == gun_slot_2.object_index and (gun_slot_2.total_ammo < gun_slot_2.ammo_max) and gun_slot_2.state == "Active"{
                ammo_to_give_potential = (gun_slot_2.ammo_max) - (gun_slot_2.total_ammo);
                if ammo_to_give_potential > gun_ground.total_ammo + gun_ground.ammo{
                    change = gun_ground.total_ammo + gun_ground.ammo;
                }
                else{
                    change = ammo_to_give_potential;
                }
                if gun_ground.total_ammo > 0{
                    if ammo_to_give_potential > gun_ground.total_ammo{
                        ammo_to_give_from_total = gun_ground.total_ammo;
                    }
                    else{
                        ammo_to_give_from_total = ammo_to_give_potential;
                    }
                    gun_slot_2.total_ammo += ammo_to_give_from_total;
                    gun_ground.total_ammo -= ammo_to_give_from_total;
                }
                if gun_ground.total_ammo == 0 and gun_ground.ammo > 0{
                    if ammo_to_give_potential > gun_ground.ammo{
                        ammo_to_give_from_clip = gun_ground.ammo;
                    }
                    else{
                        ammo_to_give_from_clip = ammo_to_give_potential;
                    }
                    gun_slot_2.total_ammo += ammo_to_give_from_clip;
                    gun_ground.ammo -= ammo_to_give_from_clip;
                }
                o_player_control.dialouge[1] = 200;
                o_player_control.pickup_gun = gun_slot_2.id;
            }
        }
    }
    if gun_ground.energy_based == false and gun_ground.total_ammo == 0 and gun_ground.ammo == 0{
        with gun_ground{
            instance_destroy();
        }
    }
}

