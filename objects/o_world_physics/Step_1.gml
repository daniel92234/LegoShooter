var list = global.conveyor_targets;

for (var i = ds_list_size(list) - 1; i >= 0; --i){
    var target = list[| i];

    if instance_exists(target){
        target.conveyor_touched = false;
    }
    else{
        ds_list_delete(list, i);
    }
}
