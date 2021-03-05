event_inherited();
if other.mute_addon >= 0{
	hp = 0;
	var o_mute = other.mute_addon;
	with(par){
		if mute != -1{
			if mute <= 0{(instance_create_depth(x,y,-100,objEEnemyMute)).target = id;}
			mute = max(mute,o_mute);
		}
	}
}