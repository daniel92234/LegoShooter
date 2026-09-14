if part_system_exists(ps){
	if (instance_exists(o_bkg_lighting)) and light = true{
	    o_bkg_lighting.beginEmissive();
	    part_system_drawit(ps);
	    o_bkg_lighting.endEmissive();
	}
	else{
		part_system_drawit(ps);
	}
}