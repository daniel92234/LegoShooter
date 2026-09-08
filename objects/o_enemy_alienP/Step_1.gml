//if we are out of health, destroy and create lots of LEGO pieces, like in LEGO Star Wars.
if (hp <= 0) {
effect_create_above(ef_smokeup,x,y,1,c_lime);
//normally I wouldn't write code in a horizontal list, but this time it's all similar code.
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = other.head_sprite; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_arm_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_arm_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_leg_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_leg_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_belt_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
if equip2 == "Jetpack"{
    with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_body_jetpack_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
}
else{
    with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_body_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
}
//the gun is created by the enemy arm, to make sure the ammo transfers over.
with my_arm {instance_destroy()} 
with my_other_arm {instance_destroy()} 
with my_head {instance_destroy()} 
instance_destroy() 
}

