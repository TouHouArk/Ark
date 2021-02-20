if !other.inv{
	if inv <= 0{
		hp -= damage_calc(other.dmg,defence,resist,other.dmgtype,false);
		inv = 1;
	}
	if skill_sptype[skillselect] = sp_type.GetAttacked && skill = -1{
		skill_sp[skillselect] = min(skill_sp[skillselect]+skill_spspd,skill_spneed[skillselect]);
	}
	with(other){if sound != -1{audio_play_sound(sound,1,false)}}
}