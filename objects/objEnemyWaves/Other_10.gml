///@desc S1 W1
if _a >= 0 && _a <= 1800{
	if _a mod 240 = 60{
		for(var i = 0;i < 3;i++){
			instance_create_depth(80+i*70,-20,0,objEnemyD1);
		}
	}
	if _a mod 240 = 180{
		for(var i = 0;i < 2;i++){
			instance_create_depth(115+i*70,-20,0,objEnemyD1);
		}
	}
	if _a >= 600 && _a mod 300 <= 80 && _a mod 40 = 0{
		for(var i = 0;i < 3;i++){
			var _i = instance_create_depth(40-i*50,250-(_a mod 300)/20*50,0,objEnemyD2);
			_i.dir = 0;
		}
	}
	if _a >= 600 && _a mod 300 <= 80 && _a mod 40 = 20{
		for(var i = 0;i < 3;i++){
			var _i = instance_create_depth(260+i*50,250-(_a mod 300)/20*50,0,objEnemyD2);
			_i.dir = 180;
		}
	}
	if _a = 1200{
		instance_create_depth(150,-20,0,objEnemyTY1);
	}
}else if _a >= 2000 && _a <= 3000{
	if _a mod 80 = 0{
		var _i = instance_create_depth(20,20,0,objEnemyD1);
		_i.dir = -45;
		_i.image_angle = 90;
		
		_i = instance_create_depth(280,20,0,objEnemyD1);
		_i.dir = 225;
		_i.image_angle = 270;
	}
	if _a mod 120 = 0{
		var _i = instance_create_depth(20,0,0,objEnemyD2);
		_i.dir = -30;
		
		_i = instance_create_depth(280,0,0,objEnemyD2);
		_i.dir = 210;
	}
	if _a mod 240 = 0{
		var _i = instance_create_depth(110,-20,0,objEnemyD2);
		_i.spd = 1;
		_i.type = 1;
		_i._t = 10;
		
		_i = instance_create_depth(190,-20,0,objEnemyD2);
		_i.spd = 1;
		_i.type = 1;
		_i._t = 10;
	}
	if _a = 2200{
		if get_chance() <= 40*global.luck_rate{
			instance_create_depth(120,-20,0,objEnemyTY1);
			instance_create_depth(180,-20,0,objEnemyTY1);
		}
	}
	if _a = 2500{
		instance_create_depth(150,-20,0,objEnemyTY2);
	}
}else if _a >= 3240{
	if _a = 3240{
		instance_create_depth(150,-50,0,objEnemyD3);
	}
	
	if _a = 3400{
		var _i = instance_create_depth(30,200,0,objEnemyD4);
		_i.dir = 0;
		_i._t = 50;
		
		_i = instance_create_depth(30,160,0,objEnemyD4);
		_i.dir = 0;
		_i._t = 70;
		
		_i = instance_create_depth(270,200,0,objEnemyD4);
		_i.dir = 180;
		_i._t = 50;
		
		_i = instance_create_depth(270,160,0,objEnemyD4);
		_i.dir = 180;
		_i._t = 70;
	}
	
	if _a = 3460{
		if get_chance() <= 20*global.luck_rate{
			(instance_create_depth(150,420,0,objEnemyTY1)).dir = 90;
		}
	}
	
	if !instance_exists(objEnemyD3){
		ed = true;
	}
}