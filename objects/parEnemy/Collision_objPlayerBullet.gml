hp -= damage_calc(other.dmg,defence,resist,other.dmgtype,true);
if hp <= 0{
	instance_destroy();
}
if other.stun_addon > 0 && stun != -1{
	stun = other.stun_addon;
}
if other.ctrl_addon > 0 && ctrl != -1{
	ctrl = other.ctrl_addon;
}
with(other){
	if sound != -1{audio_play_sound(sound,1,false)}
	if sprite_index = sprBAmiya1{
		var spa = 0.3;
		if other.hp <= 0{
			spa = 2.5;
		}
		with(objPlayer){
			if skill = -1{
				skill_sp[skillselect] = min(skill_sp[skillselect]+spa,skill_spneed[skillselect]);
			}
		}
	}
	instance_destroy();
}