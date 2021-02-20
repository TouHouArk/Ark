function projectile_W_2(_i){
	_i.sprite_index = sprBW1;
	_i.aspd = choose(-20,20);
	_i.image_angle = irandom(179);
	_i._b = 8+2*powerup;
	_i.dmg = atk;
	_i.dmg_buff = 0.5;
	_i.vspeed = 6+irandom(60)/10;
	_i.friction = 0.2;
	_i.alarm[0] = 400;
	_i._bang = 22.5;
}