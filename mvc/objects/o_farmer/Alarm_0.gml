var e;
e = instance_nearest(x,y,o_enemyP)
if (distance_to_object(e) > 300) {
happy = 1;
    if distance_to_object(o_player) < 100 {
    alarm[1] = 60;
    } else {
    alarm[0] = 30
    }
} else if (distance_to_object(e) <= 300) {
happy = 0;
alarm[0] = 30;
}

