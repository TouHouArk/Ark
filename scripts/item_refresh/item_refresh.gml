// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_refresh(){
	objPlayer.maxhpbuff = 1;
	objPlayer.atkbuff = 1;
	objPlayer.defencebuff = 1;
	objPlayer.resistbuff = 1;
	objPlayer.atkspd = 108;
	objPlayer.semi_lifepoint = 0;
	objPlayer.semi_lifepoint_used = 0;
	
	global.drone_hpbuff = 1;
	global.drone_atkbuff = 1;
	global.drone_defencebuff = 1;
	global.drone_resistbuff = 1;
	global.drone_atkspdbuff = 1;
	global.drone_dmgbuff = 1;
	global.drone_dmgbuff_phy = 1;
	global.drone_dmgbuff_art = 1;
	global.drone_dmgbuff_real = 1;
	global.money_rate = 1;
	global.elite_money = 0;
	global.exp_rate = 1;
	global.shop_price = 1;

	global.enemy_killed = 0;
	global.money = 0;
	global.hard_debuff = 0;
	for(var i = 0;i < ds_list_size(global.items_carry);i++){
		var itemid = ds_list_find_value(global.items_carry,i);
		item_get(itemid);
		ds_list_add(objItemHint.hint,itemid);
	}
	with(objPlayer){level_refresh();orbit_refresh();}
}