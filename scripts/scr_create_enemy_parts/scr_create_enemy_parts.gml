function scr_create_enemy_parts(argument0, argument1, argument2, argument3){
	my_head = instance_create_layer(x, y + argument2, "Game_Objects", o_enemy_head);
	with my_head{
	    sprite_index = argument3
	    parent = other.id;
	}
	head_sprite = my_head.sprite_index;
	my_arm = instance_create_layer(x, y, "Game_Objects", asset_get_index("o_enemy_arm_" + equip + "_" + argument0));
	if argument1 == "Shield"{
		my_other_arm = instance_create_layer(x, y, "Game_Objects", asset_get_index("o_enemy_arm_shield_" + argument0));
	}
	else{
		my_other_arm = noone
	}
	with my_arm{
	    parent = other.id;
	}
	with my_other_arm{
	    parent = other.id;
	}
}