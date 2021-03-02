// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function orbit_refresh_buff(){
	with(parPlayerSummon){
		level = objPlayer.level;
		maxhpbuff = objPlayer.orbit_maxhpbuff;
		atkbuff = objPlayer.orbit_atkbuff;
		defencebuff = objPlayer.orbit_defencebuff;
		resistbuff = objPlayer.orbit_resistbuff;
		atkspd = objPlayer.orbit_atkspd;
		shoot_bullet = objPlayer.orbit_shoot_bullet;
		shootbuff = objPlayer.orbit_shootbuff;
		range = objPlayer.orbit_range;
		level_refresh();
	}
}