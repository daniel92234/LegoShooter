alarm[0] = 600 + random(600);

var s = choose(0,1);
if (s = 0) { //from the left
    with instance_create_layer(0,24+random(200),"Background_Scenery",o_bkg_ufo) {
    speed = 1 + random(1);
    direction = 360 - random(5);
    scale = 0.5 + random(0.5);
    image_xscale = scale;
    image_yscale = scale;
    }
} else if (s = 1) { //from the left
    with instance_create_layer(room_width,24+random(200),"Background_Scenery",o_bkg_ufo) {
    speed = -1 - random(1);
    direction = 0 + random(5);
    scale = 0.5 + random(0.5);
    image_xscale = -scale;
    image_yscale = -scale;
    }
}

