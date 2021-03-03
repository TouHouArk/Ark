if mouse_x*2 > left && mouse_x*2 < right && mouse_y*2 > top && mouse_y*2 < bottom{
	var at_row = floor((mouse_x*2-left) / ow);
	var at_col = floor((mouse_y*2-top) / oh);
	var sk = skill_min+at_col*i_row+at_row;
	if sk >= skill_min && sk <= skill_max{
		with(objPlayer){
			get_skill(skillselect,sk);
			skill_special_refresh();
		}
		instance_destroy();
	}
}