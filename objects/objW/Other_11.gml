/// @desc spell 1
if _a mod 240 = 0 && instance_number(objEnemyD4) <= 4{
	var _i = instance_create_depth(x,y,0,objEnemyD4);
	_i.type = 1;
	_i.dir = 200+140*sign(_a mod 480);
	_i.spd = 1;
}
if _a mod 90 = 0{
	with(objEnemyD4){
		var dr = point_direction(x,y,objPlayer.x,objPlayer.y);
		for(var i = 0;i < 5;i++){
			var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyBullet);
			_i.sprite_index = sprBD8;
			_i.direction = dr-40+i*20;
			_i.speed = 0.5;
			_i.dmg = 200;
			_i.dmgtype = damage_type.Art;
		}
	}
}
if _a mod 10 = 0{
	for(var i = 0;i < 8*2;i++){
		var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyBulletJump);
		_i.sprite_index = sprBW2;
		_i.image_speed = 0;
		_i.speed = 0.01;
		_i.friction = -0.01;
		_i.direction = _a/10*5+i*360/8+floor(_a/150)*10;
		_i.image_angle = irandom(359);
		_i.aspd = 10;
		_i.jump_times = 2;
		_i.jump_cd = 120;
		_i.alarm[0] = 120;

		_i.jump_speed[0] = 0;
		_i.jump_friction[0] = 0;
		_i.jump_direction[0] = 0;
		_i.jump_dspd[0] = 0;
		_i.jump_dspd_a[0] = 0;

		_i.jump_speed[1] = 2;
		_i.jump_friction[1] = 0;
		_i.jump_direction[1] = 180+_a/10*5;
		_i.jump_dspd[1] = 0;
		_i.jump_dspd_a[1] = 0;
		if i >= 8{
			_i.image_index = 1;
			_i.aspd = -_i.aspd;
			_i.direction = -_i.direction;
			for(var j = 0;j < 2;j++){
			_i.jump_direction[j] = -_i.jump_direction[j];
			_i.jump_dspd[j] = -_i.jump_dspd[j];
			_i.jump_dspd_a[j] = -_i.jump_dspd_a[j];
			}
		}
		var _ang = abs(45-((_a/10*5 + 45) mod 90));
		var _arg = 1/dcos(_ang);
		_i.speed *= _arg;
		_i.friction *= _arg;
		for(var j = 0;j < 2;j++){
			_i.jump_speed[j] *= _arg;
			_i.jump_friction[j] *= _arg;
		}
		_i.dmg = atk;
		_i.dmgtype = damage_type.Physic;
	}
}