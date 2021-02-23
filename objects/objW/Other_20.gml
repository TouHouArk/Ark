/// @desc not-spell 0
if _a mod 90 = 0{
	for(var i = 0;i < 8;i++){
		var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyMissle);
		_i.sprite_index = sprBW1;
		_i.speed = 1;
		_i.direction = _a/60*30+i*360/8;
		_i.aspd = 10;
		_i.dmg = atk;
		_i.dmgtype = damage_type.Physic;
		
		_i.range = 40;
		_i._bs = sprBD3;
		_i._b = 8;
		_i._bang = _i.direction;
		_i.alarm[0] = 240;
	}
}
if _a mod 30 = 0{
	var pow = (_a mod 360)/340;
	for(var i = 0;i < 6*2;i++){
		var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyBulletJump);
		_i.sprite_index = sprBW2;
		_i.image_speed = 0;
		_i.speed = 2+pow*0.5;
		_i.friction = 0.02+pow*0.005;
		_i.direction = 90+_a/30*10+i*360/6;
		_i.image_angle = irandom(359);
		_i.aspd = 0.5;
		_i.dspd = 0.25;
		_i.jump_times = 1;
		_i.jump_cd = 120;
		_i.alarm[0] = 120;

		_i.jump_speed[0] = 1;
		_i.jump_friction[0] = -0.02;
		_i.jump_direction[0] = 60;
		_i.jump_dspd[0] = 0;
		_i.jump_dspd_a[0] = 0;
		if i >= 6{
			_i.image_index = 1;
			_i.direction = _i.direction+180;
			_i.aspd = -_i.aspd;
			_i.dspd = -_i.dspd;
			_i.dspd_a = -_i.dspd_a;
			_i.jump_direction[0] = -_i.jump_direction[0];
			_i.jump_dspd[0] = -_i.jump_dspd[0];
			_i.jump_dspd_a[0] = -_i.jump_dspd_a[0];
		}
		_i.dmg = atk;
		_i.dmgtype = damage_type.Physic;
	}
}