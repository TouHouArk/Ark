if daze <= 0{
	switch(type){
		case 0 :
			_a += 1;
			if _a >= _t+60{
				_a = 0;
				speed = spd*spdbuff;
			}else if _a >= _t{
				if _a = _t && instance_exists(objPlayer){
					shoot_ang = point_direction(x,y,objPlayer.x,objPlayer.y);
				}
				if (_a - _t) mod 10 = 0 && in_room(x,y){
					var _i = instance_create_depth(x+lengthdir_x(17,image_angle-90),y+lengthdir_y(17,image_angle-90),global.bullet_depth,objEnemyBullet);
					_i.sprite_index = sprBD2;
					_i.speed = 1.5+(_a-_t)/10*0.1;
					_i.direction = shoot_ang+dsin((_a-_t)/10*45)*10;
					_i.dmg = atk;
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
					var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyBullet);
					_i.sprite_index = sprBD2;
					_i.speed = 0.5;
					_i.friction = -0.01;
					_i.direction = image_angle+i*90+(_a/_t)*10*sign(x-150);
					_i.dmg = atk;
				}
				if _a = _t*9{
					_a = 0;
				}
			}
			speed = spd*spdbuff;
			direction = dir;
		break;
	}
}
event_inherited();