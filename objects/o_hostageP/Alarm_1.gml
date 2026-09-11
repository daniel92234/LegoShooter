if !(instance_place(x-127,y-96,o_speech_bubble)) {
bubble = 1;
alarm[2] = 60;
    with instance_create_layer(x-127,y-96,"In_World_GUIs",o_speech_bubble) {
    image_index = 0;
    text = other.saying;
    image_xscale = 1.2;
    }
}
