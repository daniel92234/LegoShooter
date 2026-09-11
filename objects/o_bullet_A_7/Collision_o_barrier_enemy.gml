if bounces > 0{
    move_bounce_solid(false);
    bounces -= 1;
}
else
if bounces == 0{
    move_contact_solid(direction,speed);
    speed = 0;
    instance_destroy();
}

