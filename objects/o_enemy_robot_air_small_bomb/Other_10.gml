alert = true;
if damage > 0{
    effect_create_above(ef_smokeup, x + random_range(-4, 4), y + random_range(-4, 4), random_range(0, 0.5), c_ltgray);
    hp -= damage;
}

