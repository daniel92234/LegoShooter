if !instance_exists(o_player){
    weapon1 = noone;
    weapon2 = noone;
    exit;
}
else if instance_exists(o_player){
    weapon1 = o_player.gun_slot_1;
    weapon2 = o_player.gun_slot_2;
    weapon_ground = o_player.gun_ground;
    with o_player{
        if !place_meeting(x, y, gun_ground){
            gun_ground = noone;
        }
    }
}
