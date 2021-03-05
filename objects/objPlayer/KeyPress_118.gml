instance_destroy(objOA);
if instance_exists(objW){
	objW.hp = 0;
}else{
	objEnemyWaves._a += 1000;
}