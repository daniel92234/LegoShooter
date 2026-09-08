//calculating the image angles for the player
dir1 = point_direction(x, y, mouse_x, mouse_y)
global.facing = 1
if dir1 > 90 and dir1 < 270{
        global.facing = -1
}
if global.facing == 1{
    if dir1 > 270{
        dir1 -= 360
    }
    dir2 = dir1 / 2
    global.dir3 = dir2
}
else if global.facing == -1{
    dir1 = 180 - dir1
    dir2 = dir1 / 2
    global.dir3 = -dir2 + 180
}
if global.facing == 1{
    image_xscale = 1
}
else if global.facing == -1{
    image_xscale = -1
}

