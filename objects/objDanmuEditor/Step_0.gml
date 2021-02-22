_a += 1;
if _a mod dt = 0{
	for(var i = 0;i < num*(1+double);i++){
		var _i = instance_create_depth(x+lengthdir_x(ds,da+i*360/num),y+lengthdir_y(ds,da+i*360/num),global.bullet_depth,(d_jump_times >= 1)?objEnemyBulletJump : objEnemyBullet);
		_i.sprite_index = d_sprite_index;
		_i.image_index = d_image_index;
		_i.image_speed = d_image_speed;
		_i.speed = d_speed;
		_i.friction = d_friction;
		_i.direction = da+d_direction+_a/dt*aspd+i*360/num;
		_i.gravity = d_gravity;
		_i.gravity_direction = d_gravity_direction;
		_i.aspd = d_aspd;
		_i.dspd = d_dspd;
		_i.dspd_a = d_dspd_a;
		if d_jump_times >= 1{
			_i.jump_times = d_jump_times;
			_i.jump_cd = d_jump_cd;
			_i.alarm[0] = d_jump_cd;
			for(var j = 0;j < d_jump_times;j++){
				_i.jump_speed[j] = d_jump_speed[j];
				_i.jump_friction[j] = d_jump_friction[j];
				_i.jump_direction[j] = d_jump_direction[j];
				_i.jump_dspd[j] = d_jump_dspd[j];
				_i.jump_dspd_a[j] = d_jump_dspd_a[j];
			}
		}
		if double && i >= num{
			_i.direction = -_i.direction;
			_i.aspd = -_i.aspd;
			_i.dspd = -_i.dspd;
			_i.dspd_a = -_i.dspd_a;
			for(var j = 0;j < d_jump_times;j++){
				_i.jump_direction[j] = -_i.jump_direction[j];
				_i.jump_dspd[j] = -_i.jump_dspd[j];
				_i.jump_dspd_a[j] = -_i.jump_dspd_a[j];
			}
		}
		_i.dmg = atk;
		_i.dmgtype = damage_type.Physic;
	}
}

if _t != -1 && _a >= _t{
	_a = -1;
}