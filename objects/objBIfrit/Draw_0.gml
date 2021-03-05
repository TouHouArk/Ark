for(var i = 0;i <= min(6,ceil(y/40*image_yscale));i++){
	draw_sprite_ext(sprite_index,0,x,y-40*i*image_yscale,image_xscale,image_yscale,image_angle,c_white,image_alpha);
}