if global.hp <= 0{
    with o_enemyP {
        image_speed = 0;
    }
//if we are out of health, destroy and create lots of LEGO pieces, like in LEGO Star Wars.
    with my_head{
        instance_destroy();
    }
    with instance_create_layer(x,y,"Game_Objects",o_bit){
        sprite_index = s_head_dead; 
        hspeed = -4 + random(8); 
        vspeed = -4 - random(2); 
        direction = random(360)
    }
    with instance_create_layer(x,y,"Game_Objects",o_bit){
        sprite_index = s_arm_hand; hspeed = -4 + random(8); vspeed = -4 - random(2); direction = random(360)
    }
    with instance_create_layer(x,y,"Game_Objects",o_bit){
        sprite_index = s_arm_hand; hspeed = -4 + random(8); vspeed = -4 - random(2); direction = random(360)
    }
    with instance_create_layer(x,y,"Game_Objects",o_bit){
        sprite_index = s_leg; hspeed = -4 + random(8); vspeed = -4 - random(2); direction = random(360)
    }
    with instance_create_layer(x,y,"Game_Objects",o_bit){
        sprite_index = s_leg; hspeed = -4 + random(8); vspeed = -4 - random(2); direction = random(360)
    }
    with instance_create_layer(x,y,"Game_Objects",o_bit){
        sprite_index = s_belt; hspeed = -4 + random(8); vspeed = -4 - random(2); direction = random(360)
    }
    with instance_create_layer(x,y,"Game_Objects",o_bit){
        sprite_index = s_torso; hspeed = -4 + random(8); vspeed = -4 - random(2); direction = random(360)
    }
    if place_meeting(x,y,o_deadly_expP){
        with instance_create_layer(x,y,"Game_Objects",o_bit){
            sprite_index = other.gun_slot_1.ground_spr;
        }
        with instance_create_layer(x,y,"Game_Objects",o_bit){
            sprite_index = other.gun_slot_2.ground_spr;
        }
        with gun_slot_1{
            instance_destroy();
        }
        with gun_slot_2{
            instance_destroy();
        }
    }
    else{
        with gun_slot_1{
            state = "Ground";
            direction = 135 - random(90); 
            speed = 3 + random(2);
        }
        with gun_slot_2{
            state = "Ground";
            direction = 135 - random(90); 
            speed = 3 + random(2);
        }
    }
    o_player_control.alarm[0] = 180;
    o_player_control.dialouge[1] = 0;
    o_player_control.dialouge[2] = 0;
    instance_destroy() ;
}

