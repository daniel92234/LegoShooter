//if we can see the player, become alert. If we can't see the player, wait for a bit and then check again.
if instance_exists(o_player){
	if guard == false{
	    if collision_line(x, y - 16, o_player.x, o_player.y, o_blockP, false, true){
	        alert = false; 
	        alarm[0] = game_get_speed(gamespeed_fps) * 4 + random(60);
	    }
	    else if !collision_line(x, y - 16, o_player.x, o_player.y, o_blockP, false, true){
	        alert = true; 
	        alarm[0] = game_get_speed(gamespeed_fps) * 4 + random(60);
	    }
	}
}