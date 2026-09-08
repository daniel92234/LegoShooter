if distance_to_object(instance_nearest(x, y, o_player)) < 15 and locked == true and global.key == "Yes"{
    locked = false;
    global.key = "No";
}
if opened == true{
    image_index = 1;
}
else if opened == false{
    image_index = 0;
}

if locked == false and (distance_to_object(instance_nearest(x, y, o_player)) < 15 or distance_to_object(instance_nearest(x, y, o_enemyP)) < 15){
    opened = true;
}
else if locked == false and !(distance_to_object(instance_nearest(x, y, o_player)) < 15 or distance_to_object(instance_nearest(x, y, o_enemyP)) < 15){
    opened = false;
}

