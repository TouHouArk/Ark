var loot = get_chance();
if (image_index = 1 || loot <= 5*global.luck_rate) && ds_list_size(global.items_gacha_sr) > 0{
	ds_list_shuffle(global.items_gacha_sr);
	item_add(ds_list_find_value(global.items_gacha_sr,0))
}else if loot <= 25*global.luck_rate && ds_list_size(global.items_gacha_r) > 0{
	ds_list_shuffle(global.items_gacha_r);
	item_add(ds_list_find_value(global.items_gacha_r,0))
}else if ds_list_size(global.items_gacha_n) > 0{
	ds_list_shuffle(global.items_gacha_n);
	item_add(ds_list_find_value(global.items_gacha_n,0))
}else{
	item_add(177);
}
instance_destroy();