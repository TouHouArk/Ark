image_angle += aspd;
if auto_found{
	if auto_target != -1 && instance_exists(auto_target){
		direction = rotate_until_angle_is(point_direction(x,y,auto_target.x,auto_target.y),direction,dspd)
	}else{
		if instance_exists(parEnemy){
			auto_target = instance_nearest(x,y,parEnemy);
		}
	}
}else{
	direction += dspd;
}
if auto_angle{
	image_angle = direction + auto_angle_d;
}
if shadow != -1{
	(create_shadow(shadow)).image_blend = image_blend;
}