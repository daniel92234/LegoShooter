explosion = other.object_index;
if explosion.player == "Player" or explosion.player == "Neutral"{
    distance = distance_to_point(other.x, other.y);
    if distance < (explosion.sprite_width / 2) * 0.2{
        damage = irandom_range(explosion.inner_damage_min, explosion.inner_damage_max);
    }
    else if distance < (explosion.sprite_width / 2) * 0.65{
        damage = irandom_range(explosion.middle_damage_min, explosion.middle_damage_max);
    }
    else if distance <= (explosion.sprite_width / 2){
        damage = irandom_range(explosion.outer_damage_min, explosion.outer_damage_max);
    }
    else{
        damage = 0;
    }
    hp -= damage;
}

