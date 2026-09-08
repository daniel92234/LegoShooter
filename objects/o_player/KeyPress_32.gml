e = instance_nearest(x,y,o_enemyP);
ic = instance_nearest(x,y,o_glass);
c = instance_nearest(x,y,o_crateP);
if distance_to_object(e) < 30{
    with e{
        damage = 20;
        hit = other.id
        event_user(0);
    }
}
if distance_to_object(ic) < 30{
    with ic{
        damage = 20;
        hit = other.id
        event_user(0);
    }
}
if distance_to_object(c) < 30{
    with c{
        damage = 20;
        hit = other.id
        event_user(0);
    }
}
if distance_to_object(o_button_press_red) < 30{
    with o_button_press_red{
        activation_redP.active = true;
    }
}
if distance_to_object(o_button_press_blue) < 30{
    with o_button_press_blue{
        activation_blueP.active = true;
    }
}
if distance_to_object(o_button_press_green) < 30{
    with o_button_press_green{
        activation_greenP.active = true;
    }
}
i = instance_nearest(x,y,o_interactP);
if distance_to_object(i) < 30{
    with i{
        destroyed = true;
    }
}

