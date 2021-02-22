with(parSkyObject){
	if high != -1 && sprite_index >= 0{
		draw_sprite_ext(sprite_index,image_index,x,y+high,image_xscale,image_yscale,image_angle,c_black,image_alpha*0.25*visible)
	}
}