if (create_droplet == true){
    var _cam = view_camera[0];
    var _left = camera_get_view_x(_cam) - 40;
    var _right = camera_get_view_x(_cam) + camera_get_view_width(_cam) + 40;

    var droplet_x = random_range(_left, _right);

    instance_create_layer(droplet_x, -20, "Instances", o_droplet);

    alarm[0] = 1;
    create_droplet = false;
}