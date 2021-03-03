function rotate_until_angle_is(target_angle,now_angle,rotate_speed){
	/*target_angle = angle_force_in_round(target_angle);
	now_angle = angle_force_in_round(now_angle);
	var rt = now_angle;
	var d = target_angle - now_angle;
	
	if abs(d) <= rotate_speed || abs(d) >= 360-rotate_speed{
		rt = target_angle;
	}else{
		if abs(d) = 180{
			rt += choose(-1,1)*rotate_speed;
		}else if d > 0 && d < 180{
			rt += rotate_speed;
		}else{
			rt -= rotate_speed;
		}
	}*/
	var rt = now_angle;
	var da = angle_difference(target_angle,now_angle);
	rt += sign(da)*min(rotate_speed,abs(da));
	return angle_force_in_round(rt);
}