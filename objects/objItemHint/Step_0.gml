var hint_size = ds_list_size(hint);
if hint_size > 0{
	if hint_a = 0{
		item_id = ds_list_find_value(hint,0);
		name = global.item_name[item_id];
		desc = global.item_desc[item_id];
		rare = global.item_rare[item_id];
	}
	hint_a += 1;
	if hint_size >= 5{
		show_time = max(60,240-(hint_size-5)*10)
	}else{
		show_time = 240;
	}
	if hint_a >= show_time{
		hint_a = 0;
		ds_list_delete(hint,0);
	}
}