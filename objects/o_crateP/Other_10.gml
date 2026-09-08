if damage > 0{
    var _hit_x = hit.x;
    var _hit_y = hit.y;
    if variable_instance_exists(hit, "cx") and variable_instance_exists(hit, "cy"){
        _hit_x = hit.cx;
        _hit_y = hit.cy;
    }
    scr_create_splinter(_hit_x, _hit_y, splinter_object, hit_number_of_splinters);
    hp -= damage;
}
