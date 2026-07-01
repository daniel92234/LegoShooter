if other.solid == true{
    if vspeed > 0{
        move_contact_all(270, 12);
        vspeed = 0;
    } 
    else if vspeed < 0{
        vspeed = 0;
    }
    motion_set(0, 0);
    can_jump = true;
}
