if global.hp < global.hp_max - 15{
    global.hp += 15;
}
else if global.hp >= global.hp_max - 15{
    global.hp = global.hp_max;
}

