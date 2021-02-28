ds -= 1;
if alp < 1{
	alp += 0.1;
}
if ds = 0{
	with(target){enemy_get_attacked(other.id)}
	(instance_create_depth(x,y,-50,objAnimeBuff)).sprite_index = sprBSparkle;
	instance_destroy();
}
if target != -1 && instance_exists(target){
	x = target.x;
	y = target.y;
}else{
	instance_destroy();
}