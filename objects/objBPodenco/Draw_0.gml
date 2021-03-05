if !explode{
	draw_sprite_ext(sprite_index,image_index+2,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
	draw_selfv();
}else{
	draw_set_alpha(0.1*image_alpha);
	draw_circle_color(x,y,showrange*1,mycol,mycol,false);
	gpu_set_blendmode(bm_add);
	draw_set_alpha(0.3*image_alpha);
	draw_circle_color(x,y,showrange*2,mycol,c_black,false);
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
}