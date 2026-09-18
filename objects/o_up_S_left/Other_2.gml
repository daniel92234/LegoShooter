if instance_exists(o_bkg_lighting){
	occluder = new BulbStaticOccluder(o_bkg_lighting.renderer);
	occluder.x = x;
	occluder.y = y;
	occluder.xscale = image_xscale;
	occluder.angle  = image_angle;
	
	var _left = bbox_left - x;
	var _top = bbox_top - y;
	var _right = bbox_right - x;
	var _bottom = bbox_bottom - y;

	occluder.AddEdge(_left, _top, _right, _bottom);
	occluder.AddEdge(_right, _bottom, _left, _bottom);
	occluder.AddEdge(_left, _bottom, _left, _top);
}
