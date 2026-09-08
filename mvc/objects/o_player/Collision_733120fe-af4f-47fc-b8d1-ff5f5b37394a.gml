if global.health < global.health_max - 70{
    global.health += 65;
}
else if global.health >= global.health_max - 70{
    global.health = global.health_max;
}

