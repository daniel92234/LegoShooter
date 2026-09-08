if distance_to_point(other.x,other.y) < 50 {
	var d = point_direction(x,y,other.x,other.y)+180
	motion_add(d,1);
}

