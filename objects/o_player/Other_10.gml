if damage > 0{
    if global.shield >= damage{
        global.hurt_col = c_blue;
        alarm[0] = 5;
        global.shield -= damage;
    }
    else if global.shield < damage{
        leftover_shield = global.shield;
        global.shield = 0;
        global.hurt_col = c_red;
        alarm[0] = 5;
        global.hp -= damage - leftover_shield;
    }
}

