if !st{
	_a += 1;
	dx2 += 1;
	if _a <= 60{
		dx1 = 160+(1-dsin(_a*1.5))*250;
		dy1 = 280-(1-dsin(_a*1.5))*250;
		image_alpha = min(1,_a/30);
		ds3 = 3-min(2,(_a/15));
	}
	if _a > 60 && _a < 120{
		dx1 = 160-20*(_a-60)/60;
		dy1 = 280+20*(_a-60)/60;
		//dx3 = 280-max(1,(_a-60)/20)*40;
	}
	if _a > 120{
		dx1 = 140-(-dsin(-(_a-120)*1.5))*250;
		dy1 = 300+(-dsin(-(_a-120)*1.5))*250;
		image_alpha = max(0,(180-_a)/30);
		dy3 = 300-(1-dcos((_a-120)*1.5))*260;
	}
	if _a = 180{
		//instance_destroy();
		st = true;
		_a = 0;
		if target != -1 && instance_exists(target){
			target.oa_st = true;
		}
		objPlayer.inv = 0;
	}
}
if ed{
	_a += 1;
	if _a <= 60{
		dx3 = 280+(_a/60)*100
	}
	if _a = 60{
		instance_destroy();
	}
}