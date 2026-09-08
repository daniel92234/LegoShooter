if opened == false{
    var _door = id;
	with other{
	    var _push;
	    var _my_center = (bbox_left + bbox_right) * 0.5;
	    var _door_center = (_door.bbox_left + _door.bbox_right) * 0.5;
	    if _my_center < _door{
	        _push = -1;
		}
	    else{
	        _push = 1;
		}
	    var _tries = 0;
	    while place_meeting(x, y, _door) and _tries < 100{
	        x += _push;
	        _tries++;
	    }
	}
}

