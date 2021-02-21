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
with(other){
	if sound != -1{audio_play_sound(sound,1,false)}
	if sprite_index = sprBAmiya1 && has_skill(1){
		var spa = 1;
		if other.hp <= 0{
			spa = 10;
		}
		with(objPlayer){
			if skill = -1 && skill_id[skillselect] >= 1 && skill_id[skillselect] <= 3{
				skill_sp[skillselect] = min(skill_sp[skillselect]+spa,skill_spneed[skillselect]);
			}
		}
	}
}