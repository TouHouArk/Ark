function item_add(itemid){
	ds_list_add(global.items_carry,itemid);
	item_get(itemid);
	ds_list_add(objItemHint.hint,itemid);
	var pos = -1;
	var list = -1;
	switch(global.item_rare[itemid]){
		default : list = global.items_gacha_n;break;
		case 1 : list = global.items_gacha_r;break;
		case 2 : list = global.items_gacha_sr;break;
		case 3 : list = global.items_gacha_spn;break;
		case 4 : list = global.items_gacha_spr;break;
		case 5 : list = global.items_gacha_spsr;break;
	}
	if list != -1{
		pos = ds_list_find_index(list,itemid);
		if pos != -1{
			ds_list_delete(list,pos);
		}
	}
	with(objPlayer){level_refresh();orbit_refresh();}
}