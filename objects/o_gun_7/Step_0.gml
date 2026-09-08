event_inherited();
bullet_x_offset = x + lengthdir_x(bullet_x_real, direction) - lengthdir_y(bullet_y_real * sign(image_yscale), direction);
bullet_y_offset = y + lengthdir_y(bullet_x_real, direction) + lengthdir_x(bullet_y_real * sign(image_yscale), direction);
