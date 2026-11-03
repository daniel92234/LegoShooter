var list = global.conveyor_targets;

for (var i = ds_list_size(list) - 1; i >= 0; --i){
    var target = list[| i];

    if !instance_exists(target){
        ds_list_delete(list, i);
        continue;
    }

    if !target.conveyor_touched{
        target.conveyor_fraction = 0;
        target.conveyor_tracked = false;

        ds_list_delete(list, i);
        continue;
    }

    var spd = target.conveyor_speed_sum / target.conveyor_count;

    if spd == 0{
        target.conveyor_fraction = 0;
        continue;
    }

    with target{
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
            else {
                move_contact_solid(180, abs(move));
            }
        }
    }
}
