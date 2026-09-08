if slot == 1{
    slot = 2;
}
else if slot == 2{
    slot = 1;
}
with gun_slot_1{
    if state == "Inactive"{
    state = "Active";
    sprite_index = gun_spr;
    }
    else if state == "Active"{
        state = "Inactive";
        if reload_state == "Reloading" and object_get_parent(self.object_index) != o_gun_energyP{
            alarm[0] = -1;
            reload_state = "Ready";
        }
    }
}
with gun_slot_2{
    if state == "Inactive"{
        state = "Active";
        sprite_index = gun_spr;
    }
    else if state == "Active"{
        state = "Inactive";
        if reload_state == "Reloading" and object_get_parent(self.object_index) != o_gun_energyP{
            alarm[0] = -1;
            reload_state = "Ready";
        }
    }
}

