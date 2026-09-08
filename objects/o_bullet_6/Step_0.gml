image_angle = direction;
smoke_x_offset = x + lengthdir_x(smoke_real_x, direction) - lengthdir_y(smoke_real_y * sign(image_yscale), direction);
smoke_y_offset = y + lengthdir_y(smoke_real_x, direction) + lengthdir_x(smoke_real_y * sign(image_yscale), direction);
if create_smoke == true{
    effect_create_above(ef_smoke,smoke_x_offset,smoke_y_offset,0.4,c_silver);
    alarm[0] = 1.25;
    create_smoke = false;
}

