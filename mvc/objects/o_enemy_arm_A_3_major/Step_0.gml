scr_arm_step(range, random_range(45, 130));
bullet_x_offset = x + lengthdir_x(bullet_x_real, image_angle) - lengthdir_y(bullet_y_real * sign(image_yscale), image_angle);
bullet_y_offset = y + lengthdir_y(bullet_x_real, image_angle) + lengthdir_x(bullet_y_real * sign(image_yscale), image_angle);
flash_x_offset = x + lengthdir_x(flash_x_real, image_angle) - lengthdir_y(flash_y_real * sign(image_yscale), image_angle);
flash_y_offset = y + lengthdir_y(flash_x_real, image_angle) + lengthdir_x(flash_y_real * sign(image_yscale), image_angle);

