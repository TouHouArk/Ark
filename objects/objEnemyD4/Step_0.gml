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
			if summon != -1 && instance_exists(summon){
				if mute > 0{
					with(summon){instance_destroy();}
				}else{
					if summon.r <= sr{
						summon.r = min(summon.r+1,sr);
					}
					summon.x = x;
					summon.y = y;
				}
			}else if mute <= 0{
				_sa -= 1;
				if _sa <= 0{
					summon = instance_create_depth(x,y,depth+10,objEnemyShield)
					alarm[0] = 1;
					_sa = _st;
				}
			}
		break;
		case 1:
			_a += 1;
			if _a mod 3 = 0 && mute <= 0{
				var _i = instance_create_depth(x+irandom_range(-40,40),y+irandom_range(-40,40),-100,objEFog);
				_i.pow = irandom_range(30,50)/100;
				_i.image_xscale = irandom_range(4,6)/10;
				_i.image_yscale = irandom_range(4,6)/10;
				_i.maxalp = 0.5;
			}
			if (x <= global.border_left+5 && dir > 90 && dir < 270) || (x >= global.border_right-5 && (dir < 90 || dir > 270)){
				dir = 180-dir;
			}
			speed = spd;
			direction = dir;
		break;
	}

	
}
event_inherited();