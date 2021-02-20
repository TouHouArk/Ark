if _a >= 0 && _a <= 1200{
	if _a = 0{
		audio_play_sound(amiya_start,2,false)
	}
	if _a mod 10 = 0 && _a mod 300 <= 50{
		var _i = instance_create_depth(30,100,0,objEnemyD1);
		_i.dir = 270;
		_i.aspd = 1;
		_i.spd = 2;
		_i.type = 1;
		_i.lifetime = 360;
	}
	if _a mod 10 = 0 && _a mod 300 >= 100 && _a mod 300 <= 150{
		var _i = instance_create_depth(270,100,0,objEnemyD1);
		_i.dir = 270;
		_i.aspd = -1;
		_i.spd = 2;
		_i.type = 1;
		_i.lifetime = 360;
	}
	if _a  = 60{
		(instance_create_depth(80,-40,0,objEnemyD4))._t2 = 1140;
		(instance_create_depth(150,-20,0,objEnemyD4))._t2 = 1140;
		(instance_create_depth(220,-40,0,objEnemyD4))._t2 = 1140;
	}
	if _a mod 180 = 50 && _a <= 720{
		instance_create_depth(120,-20,0,objEnemyD5);
		instance_create_depth(180,-20,0,objEnemyD5);
	}
	if _a = 600{
		instance_create_depth(150,-20,0,objEnemyD5);
		instance_create_depth(130,-30,0,objEnemyD5);
		instance_create_depth(170,-30,0,objEnemyD5);
	}
	if _a = 300{
		if get_chance() <= 20*global.luck_rate{
			var _i = instance_create_depth(30,120,0,objEnemyTY1);
			_i.dir = 0;
			_i.spd = 0.2;
			_i.lifetime = 1200;
		}
	}
	if _a = 900{
		if get_chance() <= 20*global.luck_rate{
			var _i = instance_create_depth(270,120,0,objEnemyTY1);
			_i.dir = 180;
			_i.spd = 0.2;
			_i.lifetime = 1200;
		}
	}
	if _a >= 900 && (_a-60) mod 120 = 0{
		(instance_create_depth(150,-20,0,objEnemyD7)).dir = -30;
		(instance_create_depth(150,-20,0,objEnemyD7)).dir = 210;
	}
}else if _a >= 1200 && _a <= 3600{
	if _a mod 120 = 0{
		var _i = instance_create_depth(30,180,0,objEnemyD5);
		_i.dir = 0;
		_i._t = 120;
		_i.lifetime = 300;
	}
	if _a mod 120 = 60{
		var _i = instance_create_depth(270,180,0,objEnemyD5);
		_i.dir = 180;
		_i._t = 120;
		_i.lifetime = 300;
	}
	if _a mod 100 = 0{
		var _i = instance_create_depth(30,0,0,objEnemyD2);
		_i.dir = -45;
		_i.image_angle = -45;
		
		_i = instance_create_depth(270,0,0,objEnemyD2);
		_i.dir = 225;
		_i.image_angle = 45;
	}
	if _a = 2340{
		if get_chance() <= 20*global.luck_rate{
			instance_create_depth(150,-20,0,objEnemyTY1);
		}
	}
	if _a = 2400{
		if get_chance() <= 40*global.luck_rate{
			instance_create_depth(70,-20,0,objEnemyTY1);
			instance_create_depth(230,-20,0,objEnemyTY1);
		}
	}
	if _a = 2460{
		if get_chance() <= 10*global.luck_rate{
			instance_create_depth(150,-20,0,objEnemyTY2);
		}
	}
}else if _a >= 3800{
	if _a = 3800{
		instance_create_depth(150,-50,0,objEnemyD3);
	}
	
	/*if  _a mod 200 = 0{
		var _i = instance_create_depth(270,200-floor(_a/200)*40,0,objEnemyD4);
		_i.dir = 225;
		_i.lifetime = 400;
		
		_i = instance_create_depth(30,200-floor(_a/200)*40,0,objEnemyD4);
		_i.dir = -45;
		_i.lifetime = 400;
	}*/
	if _a mod 400 = 0{
		var _i = instance_create_depth(150,-50,0,objEnemyD5);
		_i._t = 360;
		_i.lifetime = 800;
	}
	if _a mod 300 = 60{
		var _i = instance_create_depth(150,-20,0,objEnemyD7);
		_i.dir = -20;
		_i.lifetime = 1600;
	}
	if _a mod 300 = 0{
		var _i = instance_create_depth(150,-20,0,objEnemyD7);
		_i.dir = 200;
		_i.lifetime = 1600;
	}
	
	if _a = 4000{
		if get_chance() <= 40*global.luck_rate{
			(instance_create_depth(40,420,0,objEnemyTY1)).dir = 45;
			(instance_create_depth(260,420,0,objEnemyTY1)).dir = 135;
		}
	}
	
	if _a >= 4200 && !instance_exists(objEnemyD3){
		wave += 1;
		_a = -120;
	}
}