if room = rBattle{
	if shadow_sf = -1 || !surface_exists(shadow_sf){
		shadow_sf = surface_create(600,400);
	}
	surface_set_target(shadow_sf);
	draw_clear_alpha(c_black,0)
	gpu_set_blendmode(bm_zero);
	with(parSkyObject){
		if high != -1 && sprite_index >= 0{
			draw_sprite_ext(sprite_index,image_index,x,y+high,image_xscale,image_yscale,image_angle,c_black,image_alpha*visible)
		}
	}
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
	draw_surface_ext(shadow_sf,0,0,1,1,0,c_black,0.25);
}