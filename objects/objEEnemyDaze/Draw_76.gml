if target != -1 && instance_exists(target){
	x = target.x;
	y = target.y;
	image_xscale = 0.25*target.image_xscale;
	image_yscale = 0.25*target.image_yscale;
	image_angle -= 3;
	if target.daze <= 0{
		instance_destroy();
	}
}else{
	instance_destroy();
}