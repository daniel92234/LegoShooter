if place_meeting(x,y,o_deadly_expP){
	with instance_create_layer(x,y,"Game_Objects",o_bit) {
	    sprite_index = object_get_sprite(other.gun);
	    direction = 135 - random(90); 
	}
}
else{
	with instance_create_layer(x,y,"Game_Objects",gun){
	    if object_get_parent(self.object_index) == o_gun_energyP{
	        ammo = irandom_range(ammo_max / 2, ammo_max * (0.9));
	    }
	    else{
	        ammo = irandom_range(clip_size * (0.1), clip_size * (0.9));
	        total_ammo = irandom_range(ammo_max * (0.25), ammo_max * (0.5));
	    }
	    state = "Ground";
	    direction = 135 - random(90); 
	    speed = 3 + random(2)
	}
}
