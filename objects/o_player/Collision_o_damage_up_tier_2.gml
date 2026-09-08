if damage_multiplier <= 3{
    damage_multiplier = 3;
    damage_ticker = 600;
    with other{
        instance_destroy();
    }
}

