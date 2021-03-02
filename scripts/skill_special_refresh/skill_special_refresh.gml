function skill_special_refresh(){
	if has_skill(28){
		if !instance_exists(objPlayerOrbitClick){
			instance_create_depth(objPlayer.x,objPlayer.y,0,objPlayerOrbitClick);
			orbit_refresh_buff();
		}
	}else if instance_exists(objPlayerOrbitClick){
		instance_destroy(objPlayerOrbitClick);
	}
}