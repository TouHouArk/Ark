function move_near_to(x_to,y_to,range,acce){
	if range < 0 || point_distance(x,y,x_to,y_to) <= range{
		move_towards_point(x_to,y_to,speed+acce);
	}
}