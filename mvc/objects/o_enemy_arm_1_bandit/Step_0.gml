scr_arm_step(range, random_range(30, 90));
bullet_x_offset1 = x + lengthdir_x(bullet_x_real1, image_angle) - lengthdir_y(bullet_y_real1 * sign(image_yscale), image_angle);
bullet_y_offset1 = y + lengthdir_y(bullet_x_real1, image_angle) + lengthdir_x(bullet_y_real1 * sign(image_yscale), image_angle);
bullet_x_offset2 = x + lengthdir_x(bullet_x_real2, image_angle) - lengthdir_y(bullet_y_real2 * sign(image_yscale), image_angle);
bullet_y_offset2 = y + lengthdir_y(bullet_x_real2, image_angle) + lengthdir_x(bullet_y_real2 * sign(image_yscale), image_angle);

