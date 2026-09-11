alert = true;
if damage > 0{
    effect_create_depth(layer_get_depth("Game_Objects") + DEPTH_OFFSET_EFFECTS, ef_smokeup, x + random_range(-4, 4), y + random_range(-4, 4), random_range(0, 0.5), c_ltgray);
    hp -= damage;
}

