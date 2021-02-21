if daze <= 0{
	switch(type){
		case 0 :
			_a += 1;
			if _a >= _t+30{
				_a = 0;
				speed = spd*spdbuff;
			}else if _a >= _t{
				if _a = _t{_dr = point_direction(x+lengthdir_x(10,image_angle-90),y+lengthdir_y(10,image_angle-90),objPlayer.x,objPlayer.y)}
				if _a = _t + 5 || _a = _t+8{
					var _i = instance_create_depth(x+lengthdir_x(10,image_angle-90),y+lengthdir_y(10,image_angle-90),depth+10,objEnemyBullet);
					_i.sprite_index = sprBD7;
					_i.speed = 6;
					_i.direction = _dr;
					_i.image_yscale = 4.5;
					_i.image_angle = _i.direction + 90;
					_i.dmg = atk/2;
					_i.dmgtype = damage_type.Art;
					_i.sound = e_imp_uav_nlaser;
					speed = 0;
				}
				if _a = _t+6{
					audio_play_sound(e_atk_uav_nlaser,1,false);
				}
			}else{
				speed = spd*spdbuff;
			}
			direction = dir;
			if (x <= 65 && dir > 90 && dir < 270) || (x >= 235 && (dir < 90 || dir > 270)){
				dir = 180-dir;
			}
		break;
	}
}
event_inherited();