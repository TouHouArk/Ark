function enemy_get_attacked(other_id){
	hp -= damage_calc(other_id.dmg,defence,resist,other_id.dmgtype,true);
	if other_id.daze_addon > 0 && daze != -1{
		if daze <= 0{(instance_create_depth(x,y,-100,objEEnemyDaze)).target = id;}
		daze = max(daze,other_id.daze_addon);
	}
	if other_id.stun_addon > 0 && stun != -1{
		if stun <= 0{(instance_create_depth(x,y,-100,objEEnemyStun)).target = id;}
		stun = max(stun,other_id.stun_addon);
	}
	if other_id.ctrl_addon > 0 && ctrl != -1{
		ctrl = max(ctrl,other_id.ctrl_addon);
	}
	with(other_id){
		if sound != -1{audio_play_sound(sound,1,false)}
		if sprite_index = sprBAmiya1 && has_skill(1){
			var spa = 1;
			if other_id.hp <= 0{
				spa = 10;
			}
			with(objPlayer){
				if skill = -1 && skill_id[skillselect] >= 1 && skill_id[skillselect] <= 3{
					skill_sp[skillselect] = min(skill_sp[skillselect]+spa,skill_spneed[skillselect]);
				}
			}
		}
	}
}