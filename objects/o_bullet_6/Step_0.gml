event_inherited();
smoke_x_offset = x + lengthdir_x(smoke_real_x, direction) - lengthdir_y(smoke_real_y * sign(image_yscale), direction);
smoke_y_offset = y + lengthdir_y(smoke_real_x, direction) + lengthdir_x(smoke_real_y * sign(image_yscale), direction);
