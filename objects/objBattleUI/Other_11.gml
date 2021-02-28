///@desc switch showgui
if global.phonegui{
	/*window_set_size(1200,800);
	camera_set_view_size(view_camera[0],600,400);
	surface_resize(application_surface,1200,800);
	window_set_position(window_get_x()-300,window_get_y());*/
	view_set_xport(view_camera[0],300);
	prts_x = 220;
	prts_y = 180;
	skill_x = 1050;
	skill_y = 190;
}else{
	/*window_set_size(600,800);
	camera_set_view_size(view_camera[0],300,400);
	surface_resize(application_surface,600,800);
	window_set_position(window_get_x()+300,window_get_y());*/
	view_set_xport(view_camera[0],0);
	prts_x = 678;
	prts_y = 111;
	skill_x = 1093;
	skill_y = 451;
}