var list = ds_list_create();
var num = collision_rectangle_list(
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
    list,
    false
);
for (var i = 0; i < num; ++i){
    var target = list[| i];
	if object_get_parent(target.object_index) == o_studP and !target.gravity_bound {
		continue;
	}
    var target_center = (target.bbox_left + target.bbox_right) * 0.5;
    if target_center >= bbox_left and target_center < bbox_right{
        var spd = cspeed;
        with target{
            if !variable_instance_exists(id, "conveyor_fraction"){
                conveyor_fraction = 0;
            }
            if conveyor_fraction != 0 and sign(conveyor_fraction) != sign(spd){
                conveyor_fraction = 0;
            }
            conveyor_fraction += spd;

            var move = sign(conveyor_fraction) * floor(abs(conveyor_fraction));

            if move != 0{
                conveyor_fraction -= move;
                if move > 0{
                    move_contact_solid(0, move);
                }
                else{
                    move_contact_solid(180, abs(move));
                }
            }
        }
    }
}

ds_list_destroy(list);