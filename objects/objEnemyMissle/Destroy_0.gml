if !ed{
	(instance_create_depth(x,y,depth+1,objBoomBuff)).maxr = range;
	if sound != -1{audio_play_sound(sound,1,false)}
	speed = 0;
	if event != -1{
		event_user(event);
	}
}