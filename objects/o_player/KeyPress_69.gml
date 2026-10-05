if collision_rectangle(x, y, x + 48, y + 72, gun_ground, false, false){
    var can_pickup = false;
    if object_get_parent(gun_ground.object_index) != o_gun_energyP{
        can_pickup = (gun_slot_1 == noone or gun_slot_1.object_index != gun_ground.object_index) and
		(gun_slot_2 == noone or gun_slot_2.object_index != gun_ground.object_index);
    }
    else{
        if slot == 1{
            can_pickup = gun_slot_2 == noone or gun_slot_2.object_index != gun_ground.object_index;
        }
        else if slot == 2{
            can_pickup = gun_slot_1 == noone or gun_slot_1.object_index != gun_ground.object_index;
        }
    }
    if can_pickup {
        if gun_slot_1 != noone and gun_slot_2 != noone {
            var old_gun;
            if slot == 1 {
                old_gun = gun_slot_1;
            }
            else if slot == 2 {
                old_gun = gun_slot_2;
            }
            with old_gun {
                state = "Ground";
                if reload_state == "Reloading" {
                    alarm[0] = -1;
                    reload_state = "Ready";
                }
                speed = 0;
                image_yscale = other.image_yscale;
            }
        }
        if slot == 1 {
            if gun_slot_2 != noone {
                gun_slot_1 = gun_ground;
                gun_ground = noone;
                with gun_slot_1 {
                    state = "Active";
                    slot = 1;
                    sprite_index = gun_spr;
                }
                o_player_control.gun_picked_up = gun_slot_1.id;
            }
            else {
                gun_slot_2 = gun_ground;
                gun_ground = noone;
                with gun_slot_2 {
                    state = "Active";
                    slot = 2;
                    sprite_index = gun_spr;
                }
                with gun_slot_1 {
                    state = "Inactive";
                    if reload_state == "Reloading" and object_get_parent(object_index) != o_gun_energyP {
                        alarm[0] = -1;
                        reload_state = "Ready";
                    }
                }
                slot = 2;
                o_player_control.gun_picked_up = gun_slot_2.id;
            }
        }
        else if slot == 2 {
            if gun_slot_1 != noone {
                gun_slot_2 = gun_ground;
                gun_ground = noone;
                with gun_slot_2 {
                    state = "Active";
                    slot = 2;
                    sprite_index = gun_spr;
                }
                o_player_control.gun_picked_up = gun_slot_2.id;
            }
            else {
                gun_slot_1 = gun_ground;
                gun_ground = noone;
                with gun_slot_1 {
                    state = "Active";
                    slot = 1;
                    sprite_index = gun_spr;
                }
                with gun_slot_2 {
                    state = "Inactive";
                    if reload_state == "Reloading" and object_get_parent(object_index) != o_gun_energyP {
                        alarm[0] = -1;
                        reload_state = "Ready";
                    }
                }
                slot = 1;
                o_player_control.gun_picked_up = gun_slot_1.id;
            }
        }
        o_player_control.dialouge[2] = 200;
    }
}
