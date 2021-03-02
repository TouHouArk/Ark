if !surface_exists(sf){
	sf = surface_create(120,120);
}

surface_set_target(sf);
draw_clear_alpha(c_white,0);
draw_sprite(sprEW3,1,60,oy-y+60);
gpu_set_blendmode_ext(bm_dest_alpha, bm_zero);
draw_sprite(sprEW1,1,60,60);
draw_sprite_tiled(sprEW2,0,-x,-y);
gpu_set_blendmode(bm_normal);
surface_reset_target();
draw_surface_ext(sf,x-60,y-60,1,1,0,c_white,image_alpha*0.8);
draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,image_alpha*0.5);