if ed{
	if global.wave < 3{
		_a = -240;
		ed = false;
	}
}
_a += 1;
if _a = 0{
	if global.wave = 0{
		audio_play_sound(amiya_go,2,false);
	}else{
		audio_play_sound(amiya_start,2,false);
	}
	global.wave += 1;
}
if global.wave >= 1 && !ed{
	event_user(global.stage*3+global.wave-1);
}