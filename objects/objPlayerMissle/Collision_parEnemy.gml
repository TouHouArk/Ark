if boom{
	instance_change(objPlayerBoom,false);
	image_xscale = range/32;
	image_yscale = range/32;
	(instance_create_depth(x,y,depth+1,objBoomBuff)).maxr = range;
}else{
	with(other){enemy_get_attacked(other.id)}
	instance_destroy();
}
if sound != -1{audio_play_sound(sound,1,false)}
alarm[0] = 2;