function scr_explosion_damage(argument0,argument1){
	damage = 0;
	var can_damage = false;
	if argument0 == true{
		can_damage = true;	
	}
	else if is_array(argument0){
		can_damage = array_contains(argument0,other.player);
	}
	if can_damage{
		var explosion_radius = max(1,other.sprite_width/2);
		var distance = distance_to_point(other.x,other.y);
		if distance <= explosion_radius{
			damage = other.damage_max-(other.damage_max-other.damage_min)*clamp((distance-0.2*explosion_radius)/(0.8*explosion_radius),0,1);
			damage = ceil(damage*random_range(1-other.random_factor,1+other.random_factor))
			if argument1{
				motion_add(
					point_direction(x,y,other.x,other.y)+180,
					other.knockback_max-(other.knockback_max-other.knockback_min)*clamp((distance-0.2*explosion_radius)/(0.8*explosion_radius),0,1)
				);
			}
		}
		if other.player == "Player" and instance_exists(o_player){
	        damage *= o_player.damage_multiplier;
	    }
	}
	return damage
}
