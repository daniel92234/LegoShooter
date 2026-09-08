with other{
    if gravity_bound = true{
        if other.sprite_index == s_conveyor_belt_right_s or 
        other.sprite_index == s_conveyor_belt_right_m or 
        other.sprite_index == s_conveyor_belt_right_l
        {
            x = x + other.cspeed;
        }
        if other.sprite_index == s_conveyor_belt_left_s or 
        other.sprite_index == s_conveyor_belt_left_m or 
        other.sprite_index == s_conveyor_belt_left_l
        {
            x = x - other.cspeed;
        }
    }
}

