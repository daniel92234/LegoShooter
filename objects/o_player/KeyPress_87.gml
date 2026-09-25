if state == "Ground" and !in_water{
    vspeed =- jump_power;
}
else if in_water{
    vspeed =- jump_power / 2;
}

