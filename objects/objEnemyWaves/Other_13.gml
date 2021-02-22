/// @desc S2 W1
if _a <= 2400{
	if _a mod 240 = 60{
		var _i = instance_create_depth(220,-20,0,objEnemyD2);
		_i.spd = 1;
		_i.type = 1;
		_i._t = 15;
		
		_i = instance_create_depth(80,-20,0,objEnemyD2);
		_i.spd = 1;
		_i.type = 1;
		_i._t = 15;
	}
	if _a = 480 || _a = 1280{
		var _i = instance_create_depth(150,-20,0,objEnemyD8);
		_i.flip = _a = 1280;
	}
	if _a >= 1280 && _a <= 1880 && _a mod 200 = 80{
		var _i = instance_create_depth(20,-20,0,objEnemyD7);
		_i.dir = -45;
	}
	if _a >= 1280 && _a <= 1880 && _a mod 200 = 180{
		var _i = instance_create_depth(280,-20,0,objEnemyD7);
		_i.dir = 225;
	}
}else if _a <= 3600{
	if _a mod 240 = 0{
		var _i = instance_create_depth(120,-20,0,objEnemyD7);
		_i.type = 1;
		_i.flip = false;
		_i._t = 60;
		_i._t2 = 180;
		_i.dir = 270;
		_i.lifetime = 600;
		
		_i = instance_create_depth(180,-20,0,objEnemyD7);
		_i.type = 1;
		_i.flip = true;
		_i._t = 60;
		_i._t2 = 180;
		_i.dir = 270;
		_i.lifetime = 600;
	}
}