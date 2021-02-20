function projectile_W_3(_i,ang,range,tag){
	_i.sprite_index = sprBW2;
	_i.image_angle = ang+90;
	_i.aspd = -5+(tag mod 2)*10;
	_i.tag = tag;
	_i._b = 4+4*powerup;
	_i._bang = 0;
	_i.dmg = atk;
	_i.dmg_buff = 0.8;
	_i.speed = range/10;
	_i.direction = ang;
	_i.friction = _i.speed/20;
	_i.alarm[0] = 500;
}