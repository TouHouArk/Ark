for(var i = 0;i < _b;i++){
	var _i = instance_create_depth(x,y,10,objEnemyMissle);
	_i.sprite_index = d_sprite_index;
	_i.speed = d_speed;
	_i.alarm[0] = d_time;
	_i.dspd = 5;
	_i._b = d_b
	_i.direction = _bang+i*360/_b;
	_i.dmg = round(dmg*dmg_buff);
	_i.dmg_buff = dmg_buff;
	_i.aspd = d_aspd;
	_i.dspd = d_dspd;
	_i.image_angle = image_angle;
	_i.range = range/2;
	_i._bang = d_bang;
}