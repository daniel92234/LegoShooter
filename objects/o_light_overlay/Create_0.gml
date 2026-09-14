depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_EFFECTS;
light = new BulbLightOverlay(o_bkg_lighting.renderer);
light.sprite = sprite_index;
light.blend = image_blend;
light.xscale = image_xscale;
light.yscale = image_yscale;
light.angle = image_angle;
