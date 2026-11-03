if instance_exists(o_player){
    bullet = instance_create_layer(bullet_x_offset,bullet_y_offset,"Game_Objects",o_bullet_A_8);
        with bullet{
            direction = other.image_angle;
            image_angle = direction;
            event_user(3);
            if o_player.facing == 1{
                image_yscale = 1;
            }
            else if o_player.facing == -1{
                image_yscale = -1;
            }
            player = "Enemy";
        }
    image_speed = 1;
}
