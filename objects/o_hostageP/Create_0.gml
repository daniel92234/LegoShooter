//state 0 is hostage/scared
//state 1 is rescued/happy
happy = 0; //scared
scale = -1; //facing left
arm_angle = 90 - random(30); //arm is down
image_speed = 0;
depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_HOSTAGE;
alarm[0] = 30;
bubble = 0; //do we have a speech bubble yet