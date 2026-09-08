if (hp <= 0) {
    repeat(30+random(5)) {
        with instance_create(x,y,o_splinter) {
        direction = 160 - random(140);
        speed = 3 + random(5);
        }
    }
    choice = choose(1,2,3,4)
    if choice == 1{
        instance_create(x,y,o_walk_up);
    }
    else if choice == 2{
        instance_create(x,y,o_jump_up);
    }
    else if choice == 3{
        if irandom(8) == 1{
            instance_create(x,y,o_damage_up_tier_2);
        }
        else{
            instance_create(x,y,o_damage_up);
        }
    }
    else if choice == 4{
        if irandom(8) == 1{
            instance_create(x,y,o_shield_up_tier_2);
        }
        else{
            instance_create(x,y,o_shield_up);
        }
    }
instance_destroy();
}

