if (instance_exists(o_bkg_lighting)){
    o_bkg_lighting.beginEmissive()
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,image_angle,image_blend,image_alpha);
	o_bkg_lighting.endEmissive();
}
else{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,image_angle,image_blend,image_alpha);
}