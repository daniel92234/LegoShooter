scr_gun_step_energy_based();
bullet_x_offset1 = x + lengthdir_x(bullet_x_real1, direction) - lengthdir_y(bullet_y_real1 * sign(image_yscale), direction);
bullet_y_offset1 = y + lengthdir_y(bullet_x_real1, direction) + lengthdir_x(bullet_y_real1 * sign(image_yscale), direction);
bullet_x_offset2 = x + lengthdir_x(bullet_x_real2, direction) - lengthdir_y(bullet_y_real2 * sign(image_yscale), direction);
bullet_y_offset2 = y + lengthdir_y(bullet_x_real2, direction) + lengthdir_x(bullet_y_real2 * sign(image_yscale), direction);
bullet_x_offset3 = x + lengthdir_x(bullet_x_real3, direction) - lengthdir_y(bullet_y_real3 * sign(image_yscale), direction);
bullet_y_offset3 = y + lengthdir_y(bullet_x_real3, direction) + lengthdir_x(bullet_y_real3 * sign(image_yscale), direction);
flash_x_offset = x + lengthdir_x(flash_x_real, direction) - lengthdir_y(flash_y_real * sign(image_yscale), direction);
flash_y_offset = y + lengthdir_y(flash_x_real, direction) + lengthdir_x(flash_y_real * sign(image_yscale), direction);

