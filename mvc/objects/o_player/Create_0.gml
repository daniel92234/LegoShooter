player = "Player"
gun_1 = choose(o_gun_1, o_gun_3)
gun_2 = choose(o_gun_2, o_gun_7)
//global variables
global.health_max = 100; //health. 6 hits to die.
global.health = global.health_max;
global.shield = 50;
global.facing = 1; //facing left or right
global.dir3 = 1; //direction of head
global.grenades = 2; //grenades 
global.key = "No"; //whether we have a door key or not
walk_speed_mod = 0;
jump_power_mod = 0;
over_shield = 0;
damage_multiplier = 1;
walk_ticker = 0;
jump_ticker = 0;
damage_ticker = 0;
//gun stuff
gun_slot_1 = noone; //gun in our hands
gun_slot_2 = noone; //gun in our pocket
gun_ground = noone; //the gun on the ground
slot = 1; //which gun we are holding (gun_slot_1 or gun_slot_2)
lost = 0;
change = 0;
add_shield_point = true

with instance_create(x, y, gun_1){ //create gun in our hands
    o_player.gun_slot_1 = id;
    slot = 1;
    state = "Active";
    sprite_index = gun_spr;
    global.hurt_col = c_white;
}

with instance_create(x, y, gun_2){ //create gun in our hands
    o_player.gun_slot_2 = id;
    slot = 2;
    state = "Inactive";
    sprite_index = gun_spr;
    global.hurt_col = c_white;
}
//other stuff
//my_arm = instance_create(x,y,o_arm); //this is an overlay so when you get hit, you flash red but your gun doesn't.
my_head = instance_create(x, y - 13, o_head)

