if global.hp < global.hp_max - 60{
    global.hp += 60;
}
else if global.hp >= global.hp_max - 60{
    global.hp = global.hp_max;
}

