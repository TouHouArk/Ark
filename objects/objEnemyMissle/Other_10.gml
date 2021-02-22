for(var i = 0;i < _b;i++){
	var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyBullet);
	_i.sprite_index = _bs;
	_i.speed = 1;
	_i.direction = _bang+i*360/_b;
	_i.dmg = round(dmg*dmg_buff);
}