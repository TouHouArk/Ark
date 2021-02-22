if !surface_exists(sf){
	sf = surface_create(room_width,room_height);
}
surface_set_target(sf);
draw_clear_alpha(c_black,0);
gpu_set_blendmode(bm_add)