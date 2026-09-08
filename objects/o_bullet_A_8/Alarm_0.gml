var _range = 590;
var xx, yy;
var first_instance;
xx = x + lengthdir_x(_range, direction);
yy = y + lengthdir_y(_range, direction);
first_instance = noone;
var _best_t = 2;
var _hit_list = ds_list_create();
var _hit_count = collision_line_list(x,y,xx,yy,[o_hitP,o_shieldP],true,true,_hit_list,false);
for (var i = 0; i < _hit_count; i++){
    var _instance = _hit_list[| i];
    var _can_hit = false;
    with (_instance){
        hit = other.id;
        _can_hit = scr_hit_check_bullet(true);
    }
    if (!_can_hit){
        continue;
    }
	if (_best_t <= 1){
        var _best_x = lerp(x, xx, _best_t);
        var _best_y = lerp(y, yy, _best_t);
        if collision_line(x,y,_best_x,_best_y,_instance,true,true) == noone{
            continue;
        }
    }
    var _low = 0;
    var _high = min(1, _best_t);
    repeat (12){
        var _mid = (_low + _high) * 0.5;
        var _check_x = lerp(x, xx, _mid);
        var _check_y = lerp(y, yy, _mid);
        if collision_line(x,y,_check_x,_check_y,_instance,true,true) != noone{
            _high = _mid;
        }
        else{
            _low = _mid;
        }
    }
    if _high < _best_t{
        _best_t = _high;
        first_instance = _instance;
    }
}
ds_list_destroy(_hit_list);
cx = xx;
cy = yy;
if first_instance != noone{
    cx = lerp(x, xx, _best_t);
    cy = lerp(y, yy, _best_t);
    with first_instance{
        hit = other.id;
        scr_hit_check_bullet();
    }
    if first_instance.solid == true{
        event_user(0);
        event_user(1);
    }
}
image_xscale = point_distance(x, y, cx, cy);
