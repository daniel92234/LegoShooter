depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_EFFECTS;
light = new BulbLight(o_bkg_lighting.renderer, sprite_index, 0, x, y);
light.blend = image_blend;
light.xscale = image_xscale;
light.yscale = image_yscale;
light.angle = image_angle;
