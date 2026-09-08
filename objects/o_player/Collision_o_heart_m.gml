if global.hp < global.hp_max - 30{
    global.hp += 30;
}
else if global.hp >= global.hp_max - 30{
    global.hp = global.hp_max;
}

