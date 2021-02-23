/// @desc not-spell 1
if _a mod 10 = 0{
	for(var i = 0;i < 6;i++){
		var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyBulletJump);
		_i.sprite_index = sprBW2;
		_i.image_index = i mod 3;
		_i.image_speed = 0;
		_i.image_angle = irandom(359);
		_i.aspd = 5;
		_i.speed = 0.50;
		_i.friction = -0.02;
		_i.direction = 60+_a/10*5+i*360/6;
		_i.dspd = 2;
		_i.jump_times = 1;
		_i.jump_cd = 200;
		_i.alarm[0] = 200;

		_i.jump_speed[0] = 1;
		_i.jump_friction[0] = 0;
		_i.jump_direction[0] = 30;
		_i.jump_dspd[0] = -0.10;
		_i.jump_dspd_a[0] = 0;
		_i.dmg = atk;
		_i.dmgtype = damage_type.Physic;
	}
}