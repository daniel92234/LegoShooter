scr_arm_step(range, random_range(90, 135));
bullet_x_offset1 = x + lengthdir_x(bullet_x_real1, image_angle) - lengthdir_y(bullet_y_real1 * sign(image_yscale), image_angle);
bullet_y_offset1 = y + lengthdir_y(bullet_x_real1, image_angle) + lengthdir_x(bullet_y_real1 * sign(image_yscale), image_angle);
bullet_x_offset2 = x + lengthdir_x(bullet_x_real2, image_angle) - lengthdir_y(bullet_y_real2 * sign(image_yscale), image_angle);
bullet_y_offset2 = y + lengthdir_y(bullet_x_real2, image_angle) + lengthdir_x(bullet_y_real2 * sign(image_yscale), image_angle);
bullet_x_offset3 = x + lengthdir_x(bullet_x_real3, image_angle) - lengthdir_y(bullet_y_real3 * sign(image_yscale), image_angle);
bullet_y_offset3 = y + lengthdir_y(bullet_x_real3, image_angle) + lengthdir_x(bullet_y_real3 * sign(image_yscale), image_angle);
flash_x_offset = x + lengthdir_x(flash_x_real, image_angle) - lengthdir_y(flash_y_real * sign(image_yscale), image_angle);
flash_y_offset = y + lengthdir_y(flash_x_real, image_angle) + lengthdir_x(flash_y_real * sign(image_yscale), image_angle);

