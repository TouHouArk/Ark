/// @desc spell 0
if _a mod 60 = 0{
	for(var i = 0;i < 5*2;i++){
		var _i = instance_create_depth(x-100,y+30,global.bullet_depth,objEnemyMissle);
		_i.sprite_index = sprBW1;
		_i.image_index = 2;
		_i.image_speed = 0;
		_i.speed = 3;
		_i.friction = 0.01;
		_i.direction = 45+_a/60*30+i*360/5;
		_i.image_angle = irandom(359);
		_i.aspd = 10;
		_i.jump_times = 2;
		_i.jump_cd = 60;
		_i.alarm[0] = 60;
		_i.event = 1;
		_i._b = 5;
		_i.d_sprite_index = sprBW2;
		_i.d_image_speed = 0;
		_i.d_aspd = 5;
		_i.d_dspd = -2;
		_i.d_speed = 1;
		_i.d_time = 120;
		
		_i.d_b = 4;
		_i.d_bs = sprBW3;
		_i.d_bis = 0;
		_i.d_bang = 45;
		_i.d_bspd = 0.5;
		_i.d_baspd = 10;
		if i >= 5{
			_i.x = x+100;
			_i.image_index = 1;
			_i.d_image_index = 1;
			_i.d_bii = 1;
			_i.direction = -_i.direction;
			_i.aspd = -_i.aspd;
			_i.dspd = -_i.dspd;
			_i.dspd_a = -_i.dspd_a;
			_i.d_aspd = -_i.d_aspd;
			_i.d_dspd = -_i.d_dspd;
			_i.d_baspd = -_i.d_baspd;
			_i.d_bdspd = -_i.d_bdspd;
		}
		_i.dmg = atk*1.5;
		_i.dmgtype = damage_type.Physic;
	}
}