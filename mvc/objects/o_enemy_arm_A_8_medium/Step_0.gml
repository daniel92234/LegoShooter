scr_arm_step(range, random_range(80, 170));
bullet_x_offset = x + lengthdir_x(bullet_x_real, image_angle) - lengthdir_y(bullet_y_real * sign(image_yscale), image_angle);
bullet_y_offset = y + lengthdir_y(bullet_x_real, image_angle) + lengthdir_x(bullet_y_real * sign(image_yscale), image_angle);

