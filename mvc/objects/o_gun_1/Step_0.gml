scr_gun_step();
bullet_x_offset1 = x + lengthdir_x(bullet_x_real1, direction) - lengthdir_y(bullet_y_real1 * sign(image_yscale), direction);
bullet_y_offset1 = y + lengthdir_y(bullet_x_real1, direction) + lengthdir_x(bullet_y_real1 * sign(image_yscale), direction);
bullet_x_offset2 = x + lengthdir_x(bullet_x_real2, direction) - lengthdir_y(bullet_y_real2 * sign(image_yscale), direction);
bullet_y_offset2 = y + lengthdir_y(bullet_x_real2, direction) + lengthdir_x(bullet_y_real2 * sign(image_yscale), direction);

