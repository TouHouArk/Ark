switch(type){
	case 0 :
		_a += 1;
		if _a >= _t+30{
			_a = 0;
			speed = spd*spdbuff;
		}else if _a >= _t{
			if _a mod 5 = 0{
				var _i = instance_create_depth(x+lengthdir_x(17,image_angle-90),y+lengthdir_y(17,image_angle-90),depth+10,objEnemyBullet);
				_i.sprite_index = sprBD2;
				_i.speed = 4;
				_i.direction = image_angle-90+dsin((_a-_t)/5*45)*5*(x>=150? 1 : -1);
				_i.dmg = atk;
				_i.sound = e_imp_general_n;
			}
			speed = 0;
		}else{
			speed = spd*spdbuff;
		}
		direction = dir;
	break;
	case 1 :
		_a += 1;
		if _a mod _t = 0{
			for(var i = 0;i < 4;i++){
				var _i = instance_create_depth(x,y,depth+10,objEnemyBullet);
				_i.sprite_index = sprBD2;
				_i.speed = 2.5;
				_i.direction = image_angle+i*90+(_a/_t)*45;
				_i.dmg = atk;
			}
			if _a = _t*2{
				_a = 0;
			}
		}
		speed = spd*spdbuff;
		direction = dir;
	break;
}
event_inherited();