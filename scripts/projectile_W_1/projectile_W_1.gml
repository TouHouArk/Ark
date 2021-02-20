function projectile_W_1(_i){
	_i.sprite_index = sprBW1;
	_i.aspd = choose(-5,5);
	_i.image_angle = irandom(179);
	_i._b = 4;
	_i.event = 1;
	_i.dmg = atk;
	_i.dmg_buff = 0.8;
	_i.d_sprite_index = sprBW2;
	_i.d_aspd = sign(_i.aspd)*10;
	_i.d_dspd = sign(_i.aspd)*5;
	_i.d_speed = 2;
	_i.d_time = 40;
	_i.d_b = 3+4*powerup;
	_i.vspeed = -2;
	_i.gravity = 0.5;
	_i.alarm[0] = 20+irandom(10);
}