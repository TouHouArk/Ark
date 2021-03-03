/// @desc skill controller
if skill_sp[skillselect] = skill_spneed[skillselect] || skill_charged[skillselect] >= 1{
	skill = skill_id[skillselect];
	skill_atksploop_a = 0;
	if skill_charged[skillselect] >= 1{
		skill_charged[skillselect] -= 1;
	}else{
		skill_sp[skillselect] = 0;
	}
	//if skill_duration[skillselect] >= 5{
		skill_effect = instance_create_depth(x,y,depth-1,objESkillNormal);
	//}
	skill_effect.target = id;
	if skill_duration[skillselect] != -1{
		skill_time = skill_duration[skillselect]*room_speed/2;
		skill_effect.alarm[0] = skill_duration[skillselect]*room_speed/2;
	}else{
		skill_time = 9999;
	}
	if global.skill_sound[skill] != -1{
		audio_play_sound(global.skill_sound[skill],1,false);
	}
	event_user(2);
	if global.hard_debuff2 && inv = 0{
		lifepoint = max(1,lifepoint - 1);
	}
	if skill_duration[skillselect] >= 0 && skill_duration[skillselect] < 5{
		with(skill_effect){instance_destroy();}
		skill_effect = -1;
	}
}