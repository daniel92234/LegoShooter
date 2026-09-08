if over_shield <= 125{
    over_shield = 125;
    global.shield = over_shield + global.shield_max;
    with other{
        instance_destroy();
    }
}

