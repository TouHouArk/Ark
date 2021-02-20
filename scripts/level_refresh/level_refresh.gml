// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function level_refresh(){
	level = min(level,maxlevel);
	hp = min(hp,maxhp);
	xpneed = global.exp_need[level+1];
	
	var p = (level-1)/(maxlevel-1);
	var hp_p = hp/maxhp;
	maxhp = round((maxhp_l + (maxhp_h - maxhp_l)*p) * maxhpbuff);
	hp = maxhp*hp_p;
	atk = round((atk_l + (atk_h - atk_l)*p) * atkbuff);
	defence = round((defence_l + (defence_h - defence_l)*p) * defencebuff);
	resist = round((resist_l + (resist_h - resist_l)*p) * resistbuff);
	shoot_cd = floor(shoot_cd_o / (max(20,atkspd) / 100) * shootbuff);
}