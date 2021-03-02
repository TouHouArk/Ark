if target != -1 && instance_exists(target){
	x = target.x;
	y = target.y;
	_a += 1;
	if _a >= dmg_d{
		_a = 0;
		target.hp = max(target.hp - damage_calc(dmg,target.defence,target.resist,dmgtype,true),0);
		if sound != -1{
			audio_play_sound(sound,1,false);
		}

		dmg_t -= 1;
		if dmg_t = 0{
			instance_destroy();
		}
	}
}else{
	instance_destroy();
}