if target != -1 && instance_exists(target){
	x = target.x;
	y = target.y;
	if target.mute <= 0{
		instance_destroy();
	}
}else{
	instance_destroy();
}