if instance_exists(objPlayer){
	x = objPlayer.x;
	y = objPlayer.y;
	sp.x = x;
	sp.y = y+5;
}else{
	instance_destroy();
}