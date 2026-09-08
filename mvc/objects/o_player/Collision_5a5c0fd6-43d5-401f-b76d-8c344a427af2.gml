if over_shield <= 75{
    over_shield = 75;
    global.shield = over_shield + global.shield_max;
    with other{
        instance_destroy();
    }
}

