event_inherited();
for (var i = 0; i < array_length(bullet_x_real); i++) {
	bullet_x_offset[i] = x + lengthdir_x(bullet_x_real[i], direction) - lengthdir_y(bullet_y_real[i] * sign(image_yscale), direction);
	bullet_y_offset[i] = y + lengthdir_y(bullet_x_real[i], direction) + lengthdir_x(bullet_y_real[i] * sign(image_yscale), direction);
}

flash_x_offset = x + lengthdir_x(flash_x_real, direction) - lengthdir_y(flash_y_real * sign(image_yscale), direction);
flash_y_offset = y + lengthdir_y(flash_x_real, direction) + lengthdir_x(flash_y_real * sign(image_yscale), direction);
