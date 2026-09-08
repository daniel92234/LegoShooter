if create_droplet == true{
    instance_create(random_range((__view_get( e__VW.XView, 0 )) - 40, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 40), -20, o_droplet);
    alarm[0] = 1;
    create_droplet = false;
}

