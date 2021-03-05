if target != -1 && instance_exists(target){
	x = target.x;
	y = target.y;
	image_xscale = target.image_xscale;
	image_yscale = target.image_yscale;
	image_alpha = min(1,irandom(3))
	if target.ctrl <= 0{
		instance_destroy();
	}
}else{
	instance_destroy();
}