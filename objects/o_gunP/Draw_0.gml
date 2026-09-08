if state == "Ground"{
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
}
else if state == "Active"{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, global.hurt_col, 1);
}