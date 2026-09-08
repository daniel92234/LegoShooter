var _list = ds_list_create();
var _num = collision_rectangle_list(
    bbox_left,
    bbox_top,
    bbox_right,
    bbox_bottom,
    [
		o_player,
		o_ammoboxP,
		o_bit,
		o_enemy_minifigP,
		o_hostageP,
		o_grenadeG,
		o_grenadeT,
		o_gunP,
		o_heartP,
		o_studP
	],
    false,
    true,
    _list,
    false
);
for (var i = 0; i < _num; ++i){
    var _target = _list[| i];
    var _target_center = (_target.bbox_left + _target.bbox_right) * 0.5;
    if (_target_center >= bbox_left and _target_center < bbox_right){
        var _spd = cspeed;
        with (_target){
            if (!variable_instance_exists(id, "__conveyor_fraction")){
                __conveyor_fraction = 0;
            }
            if (__conveyor_fraction != 0 and sign(__conveyor_fraction) != sign(_spd)){
                __conveyor_fraction = 0;
            }
            __conveyor_fraction += _spd;

            var _move = sign(__conveyor_fraction) * floor(abs(__conveyor_fraction));

            if (_move != 0){
                __conveyor_fraction -= _move;
                if (_move > 0){
                    move_contact_solid(0, _move);
                }
                else{
                    move_contact_solid(180, abs(_move));
                }
            }
        }
    }
}

ds_list_destroy(_list);