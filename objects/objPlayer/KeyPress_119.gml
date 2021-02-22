if instance_exists(objEnemyWaves){
	objEnemyWaves._a = -1;
	global.wave += 1;
	if global.wave >= 3{
		global.stage += 1;
		global.wave = 0;
	}
}