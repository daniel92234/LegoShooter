if !place_meeting(x + 1, y, o_glass) and
!place_meeting(x, y + 1, o_glass) and
!place_meeting(x - 1, y, o_glass) and
!place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_all;
}
else if !place_meeting(x + 1, y, o_glass) and
!place_meeting(x, y + 1, o_glass) and
!place_meeting(x - 1, y, o_glass) and
place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_3_down;
}
else if !place_meeting(x + 1, y, o_glass) and
!place_meeting(x, y + 1, o_glass) and
place_meeting(x - 1, y, o_glass) and
!place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_3_right;
}
else if !place_meeting(x + 1, y, o_glass) and
place_meeting(x, y + 1, o_glass) and
!place_meeting(x - 1, y, o_glass) and
!place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_3_up;
}
else if place_meeting(x + 1, y, o_glass) and
!place_meeting(x, y + 1, o_glass) and
!place_meeting(x - 1, y, o_glass) and
!place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_3_left;
}
else if !place_meeting(x + 1, y, o_glass) and
!place_meeting(x, y + 1, o_glass) and
place_meeting(x - 1, y, o_glass) and
place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_2_right;
}
else if place_meeting(x + 1, y, o_glass) and
!place_meeting(x, y + 1, o_glass) and
!place_meeting(x - 1, y, o_glass) and
place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_2_down;
}
else if place_meeting(x + 1, y, o_glass) and
place_meeting(x, y + 1, o_glass) and
!place_meeting(x - 1, y, o_glass) and
!place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_2_left;
}
else if !place_meeting(x + 1, y, o_glass) and
place_meeting(x, y + 1, o_glass) and
place_meeting(x - 1, y, o_glass) and
!place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_2_up;
}
else if !place_meeting(x + 1, y, o_glass) and
place_meeting(x, y + 1, o_glass) and
place_meeting(x - 1, y, o_glass) and
place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_1_right;
}
else if place_meeting(x + 1, y, o_glass) and
!place_meeting(x, y + 1, o_glass) and
place_meeting(x - 1, y, o_glass) and
place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_1_down;
}
else if place_meeting(x + 1, y, o_glass) and
place_meeting(x, y + 1, o_glass) and
!place_meeting(x - 1, y, o_glass) and
place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_1_left;
}
else if place_meeting(x + 1, y, o_glass) and
place_meeting(x, y + 1, o_glass) and
place_meeting(x - 1, y, o_glass) and
!place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_1_up;
}
else if !place_meeting(x + 1, y, o_glass) and
place_meeting(x, y + 1, o_glass) and
!place_meeting(x - 1, y, o_glass) and
place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_2_parallel_ver;
}
else if place_meeting(x + 1, y, o_glass) and
!place_meeting(x, y + 1, o_glass) and
place_meeting(x - 1, y, o_glass) and
!place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_edge_2_parallel_hor;
}
else if place_meeting(x + 1, y, o_glass) and
place_meeting(x, y + 1, o_glass) and
place_meeting(x - 1, y, o_glass) and
place_meeting(x, y - 1, o_glass){
    sprite_index = s_glass_center;
}

