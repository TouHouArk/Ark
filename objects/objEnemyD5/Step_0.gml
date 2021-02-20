switch(type){
	case 0 :
		_a += 1;
		if _a < _t{
			speed = spd*spdbuff;
		}else if _a >= _t && _a <= _t+30{
			speed = 0;
			if _a = _t+15{
				sprite_index = sprEnemyD5End;
				xp = 5;
				var _i = instance_create_depth(x,y,depth+10,objEnemyMissle);
				_i.sprite_index = missle;
				_i.speed = 3;
				_i.direction = point_direction(x,y,objPlayer.x,objPlayer.y);
				_i.image_angle = _i.direction+90;
				_i.dmg = atk;
				_i.alarm[0] = min(200,round(point_distance(x,y,objPlayer.x,objPlayer.y)/3));
				_i._b = _b;
			}	
		}else if _a > _t+30{
			speed = spdup*spdbuff;
		}
		direction = dir;
	break;
}
event_inherited();