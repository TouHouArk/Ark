if outter_index != -1{
	draw_sprite_ext(sprite_index,outter_index,x,y,scale1*max_scale,scale1*max_scale,image_angle,c_white,image_alpha);
}
if inner_index != -1{
	draw_sprite_ext(sprite_index,inner_index,x,y,scale2*max_scale,scale2*max_scale,image_angle,c_white,image_alpha*image_alpha);
}
if fade_index != -1{
	draw_sprite_ext(sprite_index,fade_index,x,y,max_scale,max_scale,image_angle,c_white,fade_alp);
}