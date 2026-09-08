if object_is_ancestor(parent.object_index, o_enemy_alienP){
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,dir3,image_blend,1)
}
else if object_is_ancestor(parent.object_index, o_enemy_banditP){
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,dir3,parent.hurt_col,1)
}

