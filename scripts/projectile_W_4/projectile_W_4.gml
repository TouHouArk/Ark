function projectile_W_4(_i,spd,dir){
	_i.sprite_index = sprBW1;
	_i.aspd = sign(spd)*20;
	_i._bang = 45;
	_i._b = 4+2*powerup;
	_i.event = 1;
	_i.dmg = atk;
	_i.dmg_buff = 0.5;
	_i.d_sprite_index = sprBW2;
	_i.d_aspd = _i.aspd/2;
	_i.d_speed = 1;
	_i.d_time = 20;
	_i.d_b = 4+2*powerup;
	_i.d_bang = 90;
	_i.speed = spd;
	_i.direction = dir;
	_i.friction = spd/60;
	_i.alarm[0] = 60;
}