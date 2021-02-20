// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_find_list(x,y,obj,list_id){
	ds_list_clear(list_id)
	var map_id = ds_map_create();
	with(obj){
		ds_list_add(list_id,id);
		ds_map_add(map_id,id,point_distance(self.x,self.y,x,y));
	}
	for (var j = 0; j < ds_map_size(map_id) - 1; j++) {
		for (var i = 0; i < ds_map_size(map_id) - 2 - j; i++) {
			var o1 = ds_list_find_value(list_id,i);
			var o2 = ds_list_find_value(list_id,i+1);
			var d1 = ds_map_find_value(map_id,o1);
			var d2 = ds_map_find_value(map_id,o2);
			if (d1 > d2) {
				ds_list_set(list_id,i,o2);
				ds_list_set(list_id,i+1,o1);
			}
		}
	}
	ds_map_destroy(map_id);
}