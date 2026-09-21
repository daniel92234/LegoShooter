function scr_hit_check_bullet(argument0 = false) {
    var can_hit = player != hit.player or player == "Neutral";
    if argument0{
        return can_hit;
    }
    if can_hit{
		damage = hit.damage
        if other.player == "Player" and instance_exists(o_player){
	        damage *= o_player.damage_multiplier;
	    }
        event_user(0);
        return true;
    }
    return false;
}
