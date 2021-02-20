for(var i = 0;i < _b;i++){
	var _i = instance_create_depth(x,y,depth+10,objEnemyBullet);
	_i.sprite_index = sprBD2;
	_i.speed = 1;
	_i.direction = _bang+i*360/_b;
	_i.dmg = round(dmg*dmg_buff);
}