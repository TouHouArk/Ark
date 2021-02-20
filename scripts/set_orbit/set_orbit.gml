function set_orbit(orbit_index,dx,dy,shift_dx,shift_dy){
	var orbit_id = ds_list_find_value(orbits,orbit_index);
	orbit_id.dx = dx;
	orbit_id.dy = dy;
	orbit_id.sdx = shift_dx;
	orbit_id.sdy = shift_dy;
	with(orbit_id){event_user(0);}
}