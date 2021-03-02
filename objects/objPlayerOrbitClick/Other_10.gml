home_x = objPlayer.x;
home_y = objPlayer.y;
if action = 0{
	if !keyboard_check(vk_shift){
		round_ang = (round_ang + dspd + 360) mod 360;
		look_angle = 90;
	}else if instance_exists(parEnemy){
		var near = instance_nearest(objPlayer.x,objPlayer.y,parEnemy);
		if point_distance(objPlayer.x,objPlayer.y,near.x,near.y) <= 120{
			look_angle = point_direction(x,y,near.x,near.y);
		}else{
			look_angle = 90;
		}
	}
	now_x = home_x;
	now_y = home_y;
}