choice_stud = choose(1, 2);
if choice_stud == 1{
    with instance_create_layer(x + 32,y + 18, "Game_Objects", o_stud_silver){ gravity_bound = true; hspeed = -2.5+random(5); vspeed = -4-random(2.3); direction = random(360); }
    with instance_create_layer(x + 32,y + 18, "Game_Objects", o_stud_silver){ gravity_bound = true; hspeed = -2.5+random(5); vspeed = -4-random(2.3); direction = random(360); }
    with instance_create_layer(x + 32,y + 18, "Game_Objects", o_stud_silver){ gravity_bound = true; hspeed = -2.5+random(5); vspeed = -4-random(2.3); direction = random(360); }
    with instance_create_layer(x + 32,y + 18, "Game_Objects", o_stud_silver){ gravity_bound = true; hspeed = -2.5+random(5); vspeed = -4-random(2.3); direction = random(360); }
}
else if choice_stud == 2{
    with instance_create_layer(x + 32,y + 18, "Game_Objects", o_stud_gold){ gravity_bound = true; hspeed = -2.5+random(5); vspeed = -4-random(2.3); direction = random(360); }
}

