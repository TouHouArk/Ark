/// @desc spell 2
if !powerup{
	powerup = true;
	atk *= 1.5;
	powerup_effect = instance_create_depth(x,y,depth-1,objESkillNormal);
	with(powerup_effect){event_user(2);}
	powerup_effect.target = id;
}
if _a mod 480 = 0{
	tgx = 90;
	tgy = y+40;
	if tgy >= 240{
		tgy = 40
	}
}
if _a mod 480 = 240{
	tgx = 210;
	tgy = y+40;
	if tgy >= 240{
		tgy = 40
	}
}
if (abs(x-tgx) >= 1 || abs(y-tgy) >= 1){
		x += (tgx-x)/4*3;
		y += (tgy-y)/4*3;
		create_shadow(objEShadowAlpha);
}else if abs(x-tgx) >= 1 || abs(y-tgy) >= 1{
		repeat(2){
			x += sign(tgx-x);
			y += sign(tgy-y);
		}
		(create_shadow(objEShadowAlpha)).image_alpha = 0.5;
}else{
	x = tgx;
	y = tgy;
	supermove = false;
}
if _a mod 10 = 0 && _a mod 240 <= 180{
	for(var i = 0;i < 8;i++){
		var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyBulletJump);
		_i.sprite_index = sprBW2;
		_i.speed = 1;
		_i.direction = _a/5*2+i*360/8;
		_i.image_index = 1;
		_i.image_speed = 0;
		_i.image_angle = irandom(359);
		_i.aspd = 10;
		_i.dspd = 0.80;
		_i.jump_times = 2;
		_i.jump_cd = 120;
		_i.lifetime = 540;
		_i.alarm[0] = 120;

		_i.jump_speed[0] = 0.50;
		_i.jump_friction[0] = 0.01;
		_i.jump_direction[0] = 0;
		_i.jump_dspd[0] = 0;
		_i.jump_dspd_a[0] = 0;

		_i.jump_speed[1] = 1;
		_i.jump_friction[1] = 0;
		_i.jump_direction[1] = 90-18*(_a mod 20);
		_i.jump_dspd[1] = 1;
		_i.jump_dspd_a[1] = 0;
		_i.dmg = atk;
		_i.dmgtype = damage_type.Physic;
	}
}