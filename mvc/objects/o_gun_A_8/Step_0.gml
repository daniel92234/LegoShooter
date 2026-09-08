scr_gun_step_energy_based();
bullet_x_offset = x + lengthdir_x(bullet_x_real, direction) - lengthdir_y(bullet_y_real * sign(image_yscale), direction);
bullet_y_offset = y + lengthdir_y(bullet_x_real, direction) + lengthdir_x(bullet_y_real * sign(image_yscale), direction);
laser_x = x + lengthdir_x(bullet_x_real, direction) - lengthdir_y(bullet_y_real * sign(image_yscale), direction);
laser_y_1 = (y + lengthdir_y(bullet_x_real, direction) + lengthdir_x(bullet_y_real * sign(image_yscale), direction)) + 2;
laser_y_2 = (y + lengthdir_y(bullet_x_real, direction) + lengthdir_x(bullet_y_real * sign(image_yscale), direction)) - 2;

