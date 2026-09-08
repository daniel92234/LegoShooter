//throwing the grenade
if state == "Ground" or state == "Inactive"{
    exit;
}
else if state = "Active" and hold_grenade == "Holding"{
    if global.grenades <= 0{
        exit;
    }
    else if global.grenades > 0{
        image_speed = 0.5;
        with instance_create(x, y, o_grenadeT){
            speed = 15;
            direction = point_direction(x, y, mouse_x, mouse_y);
            player = "Player";
        }
    global.grenades -= 1;
    alarm[argument0] = 30;
    hold_grenade = "Rest";
    sprite_index = gun_spr;
    }
}
