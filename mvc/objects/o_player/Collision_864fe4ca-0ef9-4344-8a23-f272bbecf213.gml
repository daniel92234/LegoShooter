if global.health < global.health_max - 30{
    global.health += 30;
}
else if global.health >= global.health_max - 30{
    global.health = global.health_max;
}

