function scr_hit_check_bullet(_check_only = false) {
    var _can_hit = player != hit.player or player == "Neutral";
    if _check_only{
        return _can_hit;
    }
    if _can_hit{
        if instance_exists(o_player){
            if hit.player == "Player"{
                damage = hit.damage * o_player.damage_multiplier;
            }
            else{
                damage = hit.damage;
            }
        }
        else{
            damage = hit.damage;
        }
        event_user(0);
        return true;
    }
    return false;
}
