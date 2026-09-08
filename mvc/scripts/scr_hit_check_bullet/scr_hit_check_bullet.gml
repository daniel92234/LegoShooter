if (player == "Player" and hit.player == "Player") or (player == "Enemy" and hit.player == "Enemy"){
    exit;
}
else if (player == "Player" and hit.player == "Enemy") or
(player == "Enemy" and hit.player == "Player") or
(player == "Neutral" and hit.player == "Neutral") or
(player == "Player" and hit.player == "Neutral") or
(player == "Enemy" and hit.player == "Neutral") or
(player == "Neutral" and hit.player == "Player") or
(player == "Neutral" and hit.player == "Enemy"){
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
}
