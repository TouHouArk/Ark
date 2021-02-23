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
					var _i = instance_create_depth(x+lengthdir_x(10,image_angle-90),y+lengthdir_y(10,image_angle-90),global.bullet_depth,objEnemyBullet);
					_i.sprite_index = sprBD7;
					_i.speed = 3;
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
			if (x <= global.border_left+5 && dir > 90 && dir < 270) || (x >= global.border_right-5 && (dir < 90 || dir > 270)){
				dir = 180-dir;
			}
		break;
		case 1 :
			_a += 1;
			if _a < _t{
				speed = spd*spdbuff;
				direction = dir;
			}else if _a >= _t2+_t{
				speed = spd*spdbuff;
				direction = dir+180;
			}else{
				speed = 0;
				var ad = 1-flip*2;
				if _a >= _t*3{
					_a = _t
				}
				if _a >= _t*2{
					ad = -ad;
				}
				if _a mod 15 = 0 && _a < _t2{
					for(var i = 0;i < 8;i++){
						var _i = instance_create_depth(x+lengthdir_x(0,0+i*360/8),y+lengthdir_y(0,0+i*360/8),global.bullet_depth,objEnemyBulletJump);
						_i.sprite_index = sprBD8;
						_i.image_index = 0;
						_i.speed = 5;
						_i.direction = _a/25*2+i*360/8;
						_i.dspd = 8;
						_i.jump_times = 3;
						_i.jump_cd = 60;
						_i.alarm[0] = 60;

						_i.jump_speed[0] = 1;
						_i.jump_friction[0] = 0;
						_i.jump_direction[0] = 0;
						_i.jump_dspd[0] = 0;
						_i.jump_dspd_a[0] = 0;

						_i.jump_speed[1] = 3;
						_i.jump_friction[1] = 0;
						_i.jump_direction[1] = 0;
						_i.jump_dspd[1] = 0;
						_i.jump_dspd_a[1] = 0;

						_i.jump_speed[2] = 1.50;
						_i.jump_friction[2] = 0;
						_i.jump_direction[2] = 135;
						_i.jump_dspd[2] = 0;
						_i.jump_dspd_a[2] = 0;
						_i.dmg = atk/4;
						_i.dmgtype = damage_type.Art;
					}
				}
			}
		break;
	}
}
event_inherited();