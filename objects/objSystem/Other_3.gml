if !global.showgui{
	window_set_size(1200,800);
	camera_set_view_size(view_camera[0],600,400);
	surface_resize(application_surface,1200,800);
	window_set_position(window_get_x()-300,window_get_y());
}