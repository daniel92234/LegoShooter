if (instance_exists(o_bkg_lighting)) and light{
    o_bkg_lighting.beginEmissive()
    draw_self();
    o_bkg_lighting.endEmissive();
}
else{
	draw_self();
}
