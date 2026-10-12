with other{
    var push;
    var my_center = (bbox_left + bbox_right) * 0.5;
    var barrier_center = (other.bbox_left + other.bbox_right) * 0.5;
    if my_center < barrier_center{
        push = -1;
	}
    else{
        push = 1;
	}
    var tries = 0;
    while place_meeting(x, y, other){
        x += push;
        tries++;
    }
}