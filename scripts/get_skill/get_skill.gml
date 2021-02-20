// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_skill(ss,sid){
	skill_id[ss] = sid;
	skill_sp[ss] = global.skill_spstart[sid];
	skill_spneed[ss] = global.skill_spneed[sid];
	skill_duration[ss] = global.skill_duration[sid];
	skill_sptype[ss] = global.skill_sptype[sid];
	skill_casttype[ss] = global.skill_casttype[sid];
	skill_charge[ss] = global.skill_charge[sid];
	skill_charged[ss] = 0;
}