_a += 1;
block[0].image_yscale = global.border_up/80;
block[1].image_yscale = -(400-global.border_down)/80;
block[2].image_xscale = global.border_left/80;
block[3].image_xscale = -(300-global.border_right)/80;

bg_y += bg_spd;
if bg_y >= 40{
	bg_y -= 40;
	for(var i = 0;i < bg_w;i++){
		for(var j = bg_h-1;j > 0;j--){
			ds_grid_set(bg,i,j,bg[# i,j-1])
		}
		ds_grid_set(bg,i,0,0);
	}
	
	if ds_grid_get_max(bg,0,bg_h_use-1,bg_w,bg_h_use-1) <= 0{
		var y_place = bg_h_use-1;
		var unused_max = bg_w;
		var has_space = ds_list_create();
		var has_way = ds_list_create();
		var has_way_new = ds_list_create();
		var new_map = ds_grid_create(5,5);
		//传入当前的通路数据
		for(var i = 0;i < bg_w;i++){
			if (bg[# i,y_place+1]) >= 10{
				ds_list_add(has_way,i);
			}
			ds_list_add(has_space,i);
		}
		repeat(10){
			var dx = 0;
			var canbe_placed = false;
			//生成新的地图块
			get_mapmod_1(new_map,irandom_range(1,min(5,unused_max))*100+irandom(5));
			//获取随机地图块的通路数据
			for(var i = 0;i < bg_w;i++){
				if (new_map[# i,ds_grid_height(new_map)-1]) >= 10{
					ds_list_add(has_way_new,i);
				}
			}
			//确认能否放下
			var with_way = true;
			var repeat_time = ds_list_size(has_way);
			var repeat_double = ds_list_size(has_way_new);
			if repeat_time = 0 || repeat_double = 0{
				with_way = false;
				repeat_time = ds_list_size(has_space)
			}
			
			for(var i = 0;i < repeat_time;i++){
				var vx = (with_way ? has_way[| i] : has_space[| i]);
				var blockid = -1;
				if vx != undefined{
					blockid = bg[# vx,y_place];
				}
				if blockid = 0 || !with_way{
					for(var j = 0;j < repeat_double;j++){
						var mx = 0;
						var _l = vx;
						if with_way{
							_l += -has_way_new[| j];
							mx = -has_way_new[| j];
						}else{
							_l += -j
							mx = -j;
						}
						var _r = _l+ds_grid_width(new_map)-1;
						if (_l < 0 || bg[# _l,y_place] = 0) && (_r > bg_w || bg[# _r,y_place] = 0){
							dx = min(vx+mx,6);
							canbe_placed = true;
							if with_way{
								ds_list_delete(has_way,i);
							}
						}
					}
				}
			}
			//放置
			if canbe_placed{
				ds_grid_set_grid_region(bg,new_map,
				max(0,-dx),0,
				min(bg_w-dx-1,ds_grid_width(new_map)-1),ds_grid_height(new_map)-1,
				max(0,dx),y_place-ds_grid_height(new_map)+1)
			}
			ds_grid_clear(new_map,0);
			ds_list_clear(has_way_new);
			ds_list_clear(has_space);
			//确认剩余格子数和最大可用格子数
			var unused_combo = 0;
			unused_max = 0;
			for(var i = 0;i < bg_w;i++){
				if bg[# i,y_place] = 0{
					unused_combo += 1;
					ds_list_add(has_space,i);
				}else{
					unused_combo = 0;
				}
				unused_max = max(unused_combo,unused_max);
			}
			if unused_max <= 0{
				break;
			}
		}
		//将未修改的剩余格子改为黑砖
		for(var i = 0;i < bg_w;i++){
			for(var j = y_place-4;j <= y_place;j++){
				if bg[# i,j] = 0{
					bg[# i,j] = 6;
				}
			}
		}
		//清除已使用的ds
		if ds_exists(new_map,ds_type_map){
			ds_map_destroy(new_map);
		}
		ds_list_destroy(has_way);
		ds_list_destroy(has_way_new);
		ds_list_destroy(has_space);
	}
}