//being hit by a grenade
explosion = other.object_index;
if explosion.player == "Player" or explosion.player == "Neutral"{
    if distance > (explosion.sprite_width / 2) * 0.2{
        d = point_direction(x, y, explosion.x, explosion.y) + 180
        motion_add(d, random_range(explosion.inner_knockback_min, explosion.inner_knockback_max));
        damage = irandom_range(explosion.inner_damage_min, explosion.inner_damage_max);
    }
    else if distance > (explosion.sprite_width / 2) * 0.65{
        d = point_direction(x, y, explosion.x, explosion.y) + 180
        motion_add(d, random_range(explosion.middle_knockback_min, explosion.middle_knockback_max));
        damage = irandom_range(explosion.middle_damage_min, explosion.middle_damage_max);
    }
    else if distance >= (explosion.sprite_width / 2){
        d = point_direction(x, y, explosion.x, explosion.y) + 180
        motion_add(d, random_range(explosion.outer_knockback_min, explosion.outer_knockback_max));
        damage = irandom_range(explosion.outer_damage_min, explosion.outer_damage_max);
    }
    else{
        damage = 0;
    }
    if explosion.player == "Player"{
        if instance_exists(o_player){
            hp -= damage * o_player.damage_multiplier;
        }
        else{
            hp -= damage;
        }
    }
    else{
        hp -= damage;
    }
    hurt_col = c_red;
    alarm[2] = 5;
    alert = true;
}

