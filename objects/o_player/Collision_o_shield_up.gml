if over_shield <= 75{
    over_shield = 75;
    shield = over_shield + shield_max;
    with other{
        instance_destroy();
    }
}

