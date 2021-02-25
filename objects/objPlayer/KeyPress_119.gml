if instance_exists(objEnemyWaves){
	with(parEnemy){
		instance_destroy();
	}
	objEnemyWaves._a = -1;
	if global.wave >= 3{
		global.stage += 1;
		global.wave = 0;
	}
}