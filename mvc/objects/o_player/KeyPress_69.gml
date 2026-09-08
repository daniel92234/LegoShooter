if collision_rectangle(x, y, x + 48, y + 72, gun_ground, true, false){
    if slot == 1{
        if (gun_slot_1.object_index != gun_ground.object_index and gun_slot_2.object_index != gun_ground.object_index) and gun_ground.energy_based == false{
            with gun_slot_1{
                state = "Ground";
                if reload_state == "Reloading"{
                    alarm[0] = -1;
                    reload_state = "Ready";
                }
                speed = 0;
                image_yscale = other.image_yscale;
            }
            gun_slot_1 = gun_ground;
            gun_ground = noone;
            with gun_slot_1 {
                o_player.gun_slot_1 = id;
                state = "Active";
                slot = 1;
                sprite_index = gun_spr;
            }
            o_player_control.dialouge[2] = 200;
            o_player_control.gun_picked_up = gun_slot_1.id;
        }
        else if (gun_slot_2.object_index != gun_ground.object_index) and gun_ground.energy_based == true{
            with gun_slot_1{
                state = "Ground";
                speed = 0;
                image_yscale = other.image_yscale;
            }
            gun_slot_1 = gun_ground;
            gun_ground = noone;
            with gun_slot_1 {
                o_player.gun_slot_1 = id;
                state = "Active";
                slot = 1;
                sprite_index = gun_spr;
            }
            o_player_control.dialouge[2] = 200;
            o_player_control.gun_picked_up = gun_slot_1.id;
        }
    }
    else if slot == 2{
        if (gun_slot_1.object_index != gun_ground.object_index and gun_slot_2.object_index != gun_ground.object_index) and gun_ground.energy_based == false{
            with gun_slot_2{
                state = "Ground";
                if reload_state == "Reloading"{
                    alarm[0] = -1;
                    reload_state = "Ready";
                }
                speed = 0;
                image_yscale = other.image_yscale;
            }
            gun_slot_2 = gun_ground;
            gun_ground = noone;
            with gun_slot_2{
                o_player.gun_slot_2 = id; //this is essential. It makes sure that only one objevct is gun_slot_2.
                state = "Active";
                slot = 2;
                sprite_index = gun_spr;
            }
            o_player_control.dialouge[2] = 200;
            o_player_control.gun_picked_up = gun_slot_2.id;
        }
        else if (gun_slot_1.object_index != gun_ground.object_index) and gun_ground.energy_based == true{
            with gun_slot_2{
                state = "Ground";
                speed = 0;
                image_yscale = other.image_yscale;
            }
            gun_slot_2 = gun_ground;
            gun_ground = noone;
            with gun_slot_2 {
                o_player.gun_slot_2 = id;
                state = "Active";
                slot = 2;
                sprite_index = gun_spr;
            }
            o_player_control.dialouge[2] = 200;
            o_player_control.gun_picked_up = gun_slot_2.id;
        }
    }
}
else{
    exit;
}

