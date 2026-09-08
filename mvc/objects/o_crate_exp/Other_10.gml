player_exp = hit.player;
if damage > 0{
    repeat(5 + random(2)){
        with instance_create(hit.x, hit.y, o_splinter){
            direction = 160 - random(140);
            speed = 3 + random(5);
        }
    }
    hp -= damage;
}

