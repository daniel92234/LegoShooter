//being hit by a grenade
if scr_explosion_damage(["Player", "Neutral"], true) > 0{
	event_user(0);
	if jetpacking == true{
		alarm[3] = 20;
	}
}
