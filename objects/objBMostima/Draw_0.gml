gpu_set_blendmode(bm_add);
draw_selfv();
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,small_angle,merge_color(c_red,c_white,now_time/(times-1)),image_alpha);
gpu_set_blendmode(bm_normal);