if global.health < global.health_max - 15{
    global.health += 15;
}
else if global.health >= global.health_max - 15{
    global.health = global.health_max;
}

