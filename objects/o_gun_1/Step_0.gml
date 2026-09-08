event_inherited();
for (var i = 0; i < array_length(bullet_x_real); i++) {
	bullet_x_offset[i] = x + lengthdir_x(bullet_x_real[i], direction) - lengthdir_y(bullet_y_real[i] * sign(image_yscale), direction);
	bullet_y_offset[i] = y + lengthdir_y(bullet_x_real[i], direction) + lengthdir_x(bullet_y_real[i] * sign(image_yscale), direction);
}
