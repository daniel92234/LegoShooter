if x < __view_get( e__VW.XView, 0 ) - argument0 or 
x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) + argument0 or
y < __view_get( e__VW.YView, 0 ) - argument0 or 
y > (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) + argument0{
    instance_destroy()
}
