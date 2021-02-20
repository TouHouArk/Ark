if aspd != 0{
	image_angle += aspd;
}
if auto_found{
	if auto_target != -1 && instance_exists(auto_target){
		var tdr = point_direction(x,y,auto_target.x,auto_target.y)
		if abs(tdr - direction) <= dspd || abs(tdr - direction) >= 360-dspd{
			direction = tdr;
		}else if tdr < direction || tdr >= direction + 180 {
			direction -= dspd;
		}else{
			direction += dspd;
		}
	}else{
		if instance_exists(parEnemy){
			auto_target = instance_nearest(x,y,parEnemy);
		}
	}
}else{
	if dspd != 0{
		direction += dspd;
	}
}
if auto_angle{
	image_angle = direction + auto_angle_d;
}
if shadow >= 0{
	(create_shadow(shadow)).image_blend = image_blend;
}