scr_all_bullet_step();
if instance_exists(o_bkg_lighting_night){
    light_id.x = x;
    light_id.y = y;
    light_id.speed = speed;
    light_id.direction = direction;
    light_id.image_angle = image_angle;
}
if player == "Player"{
    if instance_exists(e) and (distance_to_object(e) < 200) and !collision_line(x, y, e.x, e.y, o_blockP, false, true){
        target = e;
    }
    else{
        target = noone;
    }
}
if player == "Enemy"{
    if (distance_to_object(o_player) < 200) and !collision_line(x, y, o_player.x, o_player.y, o_blockP, false, true){
        target = o_player
    }
    else{
        target = noone;
    }
}
if instance_exists(target){
    if player == "Player"{
        target_direction = point_direction(x, y, target.x, target.y);
    }
    else if player == "Enemy"{
        if instance_exists(o_player){
            target = o_player;
            target_direction = point_direction(x, y, target.x, target.y);
        }
    }
    diff = target_direction - direction;
    while (diff > 180) diff -= 360;
    while (diff < -180) diff += 360;
    if abs(diff) < 4.5{
        direction = target_direction;
    }
    else{
        direction += sign(diff) * 4.5;
    }
}

