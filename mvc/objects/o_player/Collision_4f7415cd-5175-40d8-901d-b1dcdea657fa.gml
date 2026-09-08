if damage_multiplier <= 2{
    damage_multiplier = 2;
    damage_ticker = 600;
    with other{
        instance_destroy();
    }
}

