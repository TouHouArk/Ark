if focus{
	if keyboard_check_pressed(vk_enter){
		event_user(2);
	}
}else if point_distance(x,y,mouse_x,mouse_y) <= 20{
	if mouse_wheel_up() || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("+")){
		num += addon;
		event_user(1);
	}else if mouse_wheel_down() || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("-")){
		num -= addon;
		event_user(1);
	}
}