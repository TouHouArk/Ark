ds -= 1;
if alp < 1{
	alp += 0.1;
}
if ds = 0{
	instance_change(objPlayerBullet,false);
	sprite_index = sprBTexas2;
	(instance_create_depth(x,y,-50,objAnimeBuff)).sprite_index = sprBSparkle;
	alp = 0;
	image_alpha = 0;
}
if target != -1 && instance_exists(target){
	x = target.x;
	y = target.y;
}else{
	instance_destroy();
}