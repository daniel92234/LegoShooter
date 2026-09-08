if instance_exists(o_player) {
    if !collision_line(x,y,o_player.x,o_player.y,o_blockP,0,1){
        dir1=point_direction(x,y,o_player.x,o_player.y)
        facing=1
        if dir1>90
        if dir1<270
        facing=-1
        if facing=1
        {
        if dir1>270
        dir1-=360
        dir2=dir1/2
        dir3=dir2
        }
        if facing=-1
        {
        dir1=180-dir1
        dir2=dir1/2
        dir3=-dir2//+180
        }
        if facing = 1 {
        image_xscale = 1
        }
        if facing = -1 {
        image_xscale = -1
        }
    }
}

x = parent.x;
y = parent.y-7;

