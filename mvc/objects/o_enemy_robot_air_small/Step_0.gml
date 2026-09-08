if use_path == false{
    exit;
}
if !(x < __view_get( e__VW.XView, 0 ) - 40 or 
x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) + 40 or
y < __view_get( e__VW.YView, 0 ) - 40 or 
y > (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) + 40){
    inView = true;
}
if inView == true and start_path == false{
    path_start(path, 2, action, true);
    start_path = true;
}

