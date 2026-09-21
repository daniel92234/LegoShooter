if damage > 0{
    if shield >= damage{
        hurt_col = c_blue;
        alarm[0] = 5;
        shield -= damage;
    }
    else if shield < damage{
        leftover_shield = shield;
        shield = 0;
        hurt_col = c_red;
        alarm[0] = 5;
        hp -= damage - leftover_shield;
    }
}

