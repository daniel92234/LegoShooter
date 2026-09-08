var _barrier = id;
with other{
    var _push;
    var _my_center = (bbox_left + bbox_right) * 0.5;
    var _barrier_center = (_barrier.bbox_left + _barrier.bbox_right) * 0.5;
    if _my_center < _barrier_center{
        _push = -1;
	}
    else{
        _push = 1;
	}
    var _tries = 0;
    while place_meeting(x, y, _barrier) and _tries < 100{
        x += _push;
        _tries++;
    }
}