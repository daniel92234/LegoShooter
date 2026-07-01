if place_meeting(x,y,o_deadly_expP){
    with instance_create(x,y,o_bit) {
        sprite_index = argument0;
        direction = 135 - random(90); 
    }
}
else{
    with instance_create(x,y,argument1){
        if energy_based == true{
            ammo = irandom_range(ammo_max / 2, ammo_max * (0.9));
        }
        else if energy_based == false{
            ammo = irandom_range(clip_size * (0.1), clip_size * (0.9));
            total_ammo = irandom_range(ammo_max * (0.25), ammo_max * (0.5));
        }
        state = "Ground";
        direction = 135 - random(90); 
        speed = 3 + random(2)
    }
}
