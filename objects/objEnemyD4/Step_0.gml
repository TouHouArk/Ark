if daze <= 0{
	switch(type){
		case 0 :
			_a += 1
			if _a < _t || (_t2 != -1 && _a >= _t2){
				speed = spd*spdbuff;
			}else{
				speed = 0;
			}
			direction = dir;
		break;
	}

	if instance_exists(shield){
		if shield.r <= sr{
			shield.r = min(shield.r+1,sr);
		}
		shield.x = x;
		shield.y = y;
	}else{
		_sa += 1;
		if _sa >= _st{
			shield = instance_create_depth(x,y,depth+10,objEnemyShield)
			alarm[0] = 1;
			_sa = 0;
		}
	}
}
event_inherited();