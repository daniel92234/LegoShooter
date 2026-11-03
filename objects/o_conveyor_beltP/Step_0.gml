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

    if object_get_parent(target.object_index) == o_studP and !target.gravity_bound{
        continue;
    }

    var target_center = (target.bbox_left + target.bbox_right) * 0.5;

    if target_center >= bbox_left and target_center < bbox_right{
        if !variable_instance_exists(target, "conveyor_tracked") or !target.conveyor_tracked {
            target.conveyor_tracked = true;
            target.conveyor_touched = false;
            target.conveyor_fraction = 0;

            ds_list_add(global.conveyor_targets, target);
        }

        if !target.conveyor_touched{
            target.conveyor_touched = true;
            target.conveyor_speed_sum = 0;
            target.conveyor_count = 0;
        }

        target.conveyor_speed_sum += cspeed;
        target.conveyor_count += 1;
    }
}

ds_list_destroy(list);
