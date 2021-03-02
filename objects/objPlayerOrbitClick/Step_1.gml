if instance_exists(objPlayer){
	event_user(0);
}
if skilling && follow != -1 && action = 0{
	action = 1;
	_a = 0;
}
if !skilling{
	follow = -1;
}
if skilling && follow != -1 && instance_exists(follow){
	follow_x = follow.x;
	follow_y = follow.y;
	look_angle = point_direction(x,y,follow_x,follow_y);
	now_angle = now_angle;
}

x = now_x + lengthdir_x(dis,round_ang);
y = now_y + lengthdir_y(dis,round_ang);

now_angle = rotate_until_angle_is(look_angle,now_angle,aspd)
image_angle = now_angle-90;