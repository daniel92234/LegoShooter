if over_shield <= 125{
    over_shield = 125;
    shield = over_shield + shield_max;
    with other{
        instance_destroy();
    }
}

