if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_player,0,1) and locked == true and global.key == true{
    locked = false;
    global.key = false;
}
if opened == true{
    image_index = 1;
	mask_index = blank
}
else if opened == false{
    image_index = 0;
	mask_index = -1
}

if locked == false{
	if collision_rectangle(x,y,x+5,y+sprite_height,[o_enemyP, o_player],0,1){
	    opened = true;
	}
	else {
	    opened = false;
	}
}
