if (other.state == "Ground"){
    gun_ground = other.id;
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
    if object_get_parent(gun_ground.object_index) != o_gun_energyP{
        var gun_slot = noone;
        if gun_slot_1 != noone and gun_ground.object_index == gun_slot_1.object_index and gun_slot_1.state == "Active"{
            gun_slot = gun_slot_1;
        }
        else if gun_slot_2 != noone and gun_ground.object_index == gun_slot_2.object_index and gun_slot_2.state == "Active"{
            gun_slot = gun_slot_2;
        }
        if gun_slot != noone and gun_slot.total_ammo < gun_slot.ammo_max and (gun_ground.total_ammo > 0 or gun_ground.ammo > 0){
            var ammo_needed = gun_slot.ammo_max - gun_slot.total_ammo;
            var ammo_from_total = min(ammo_needed, gun_ground.total_ammo);

            gun_slot.total_ammo += ammo_from_total;
            gun_ground.total_ammo -= ammo_from_total;
            ammo_needed -= ammo_from_total;
            var ammo_from_clip = min(ammo_needed, gun_ground.ammo);
            gun_slot.total_ammo += ammo_from_clip;
            gun_ground.ammo -= ammo_from_clip;
            change = ammo_from_total + ammo_from_clip;
            o_player_control.dialouge[1] = 200;
            o_player_control.pickup_gun = gun_slot.id;
        }
        if gun_ground.total_ammo <= 0 and gun_ground.ammo <= 0{
            instance_destroy(gun_ground);
        }
    }
}