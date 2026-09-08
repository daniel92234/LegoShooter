if use_path == false{
    exit;
}
if !(x < __view_get( e__VW.XView, 0 ) - 45 or 
x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) + 45 or
y < __view_get( e__VW.YView, 0 ) - 45 or 
y > (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) + 45){
    inView = true;
}
if inView == true and start_path == false{
    path_start(path, 4, action, true);
    start_path = true;
}

