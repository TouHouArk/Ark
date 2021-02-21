var ct = true;
if ds_list_size(meeting_objects) >= 1{
	if ds_list_find_index(meeting_objects,other.id) != -1{
		ct = false;
	}
}
if ct{
	ds_list_add(meeting_objects,other.id)
	with(other){
		hp -= damage_calc(other.dmg,defence,resist,other.dmgtype,true);
		if hp <= 0{
			instance_destroy();
		}
		if other.daze_addon > 0 && daze != -1{
			if daze <= 0{
				(instance_create_depth(x,y,-100,objEEnemyDaze)).target = id;
			}
			daze = other.daze_addon;
		}
		if other.stun_addon > 0 && stun != -1{
			if stun <= 0{
				(instance_create_depth(x,y,-100,objEEnemyStun)).target = id;
			}
			stun = other.stun_addon;
		}
		if other.ctrl_addon > 0 && ctrl != -1{
			ctrl = other.ctrl_addon;
		}
	}
	if sound != -1{audio_play_sound(sound,1,false)};
}