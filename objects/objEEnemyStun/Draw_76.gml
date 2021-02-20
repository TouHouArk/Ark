if target != -1 && instance_exists(target){
	x = target.x;
	y = target.y;
	if target.stun <= 0{
		instance_destroy();
	}
}else{
	instance_destroy();
}