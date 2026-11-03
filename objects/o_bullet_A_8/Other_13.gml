/// @description Hitscan Effect
var first_instance = noone;

var best_length = range;
var spr_width = sprite_get_width(sprite_index);
image_xscale = range / spr_width;

var hit_list = ds_list_create();
var hit_count = instance_place_list(x, y, [o_hitP, o_shieldP, o_lava], hit_list, false);

for (var i = 0; i < hit_count; i++){
    var instance = hit_list[| i];
    var can_hit = false;

    with instance{
        hit = other.id;
        can_hit = scr_hit_check_bullet(true);
    }

    if !can_hit{
        continue;
    }
	
    image_xscale = best_length / spr_width;

    if !place_meeting(x, y, instance){
        continue;
    }

    var low = 0;
    var high = best_length;
    repeat 12{
        var mid = (low + high) * 0.5;

        image_xscale = mid / spr_width;

        if (place_meeting(x, y, instance)){
            high = mid;
        }
		else {
            low = mid;
        }
    }
	
    if high < best_length{
        best_length = high;
        first_instance = instance;
    }
}

ds_list_destroy(hit_list);

cx = x + lengthdir_x(best_length, direction);
cy = y + lengthdir_y(best_length, direction);
image_xscale = (best_length / spr_width);

// Handle Collisions
if first_instance != noone{
    with first_instance{
        hit = other.id;
        scr_hit_check_bullet();
    }
    if first_instance.solid == true{
        event_user(0);
        event_user(1);
    }
	if first_instance.object_index == o_lava{
		instance_create_layer(cx,cy,"Game_Objects",o_bullet_impact_lava)
	}
}

// Visual Laser
var laser = instance_create_layer(x, y, "Game_Objects", o_A_8_laser);
laser.image_xscale = image_xscale;
laser.image_yscale = image_yscale;
laser.image_angle = image_angle;

if first_instance == noone{
	var laser_end = instance_create_layer(cx, cy, "Game_Objects", o_A_8_laser);
	laser_end.sprite_index = s_bullet_A_8_ending;
	laser_end.image_angle = image_angle;
}

alarm[1] = 1;
