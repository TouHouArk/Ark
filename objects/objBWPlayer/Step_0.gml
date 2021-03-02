ang = (ang+aspd) mod 360;
_a += 1;
if _a = 60 && !ed{
	if time_counter = 3{
		ed = true;
		(instance_create_depth(x,y,-50,objAnimeBuff)).sprite_index = sprESparkle;
		
	}else{
		time_counter += 1;
		_a = 0;
	}
}
if ed{
	if _a = 65{
		instance_destroy();
	}
}

if target != -1 && instance_exists(target){
	x = target.x;
	y = target.y;
}else{
	instance_destroy();
}