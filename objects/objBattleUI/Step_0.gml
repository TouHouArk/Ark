_a += 1;
block[0].image_yscale = global.border_up/80;
block[1].image_yscale = -(400-global.border_down)/80;
block[2].image_xscale = global.border_left/80;
block[3].image_xscale = -(300-global.border_right)/80;

//skill_x = mouse_x*2;
//skill_y = mouse_y*2;

bg_y += bg_spd;
if bg_y >= 40{
	bg_y -= 40;
	for(var i = 0;i < bg_w;i++){
		for(var j = bg_h-1;j > 0;j--){
			ds_grid_set(bg,i,j,bg[# i,j-1])
		}
		ds_grid_set(bg,i,0,0);
	}
	
	if ds_grid_get_max(bg,0,bg_h_use-1,bg_w,bg_h_use-1) <= 0{
		event_user(0);
	}
}