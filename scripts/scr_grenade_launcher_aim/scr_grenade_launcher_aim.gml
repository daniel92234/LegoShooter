function scr_grenade_launcher_aim(){
	var _dx = o_player.x - bullet_x_offset;
    var _x  = abs(_dx);

	var _y = bullet_y_offset - o_player.y;

    var _v2 = bullet_speed * bullet_speed;
    var _v4 = _v2 * _v2;
	
	var _disc = _v4 - global.world_gravity * (global.world_gravity * _x * _x + 2 * _y * _v2);
	
	if (_disc < 0 or point_distance(bullet_x_offset,bullet_y_offset,o_player.x,o_player.y) < 120){
        return point_direction(x, y, o_player.x, o_player.y);
	}
		
	var _root = sqrt(_disc);
	
	var _numerator = _v2 - _root;
	
	var _angle = darctan2(_numerator, global.world_gravity * _x);
	
	if (_dx < 0){
        _angle = 180 - _angle;
	}

    return (_angle + 360) mod 360;
}