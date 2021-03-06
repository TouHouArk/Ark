function orbit_refresh(){
	var nums = min(orbit_num,orbit_num_now);
	if nums >= 1{
		//检测存在的无人机是否比拥有无人机多
		if instance_number(objPlayerOrbit) > nums{
			with(objPlayerOrbit){
				if ds_list_find_index(other.orbits,id) = -1{
					instance_destroy();
				}
			}
		}
		//如果还是多就随机删除
		while(instance_number(objPlayerOrbit) > nums){
			var des = irandom(ds_list_size(orbits)-1);
			var ins = ds_list_find_value(orbits,des);
			if instance_exists(ins) && ins > 0{
				instance_destroy(ins);
			}
			ds_list_delete(orbits,des);
		}
		//检测列表里是否有不存在的无人机
		for(var i = 0;i < ds_list_size(orbits);i++){
			if !instance_exists(ds_list_find_value(orbits,i)){
				ds_list_delete(orbits,i);
				i -= 1;
			}
		}
		//创建缺少部分的无人机
		while(ds_list_size(orbits) < nums){
			if ds_list_size(orbits) mod 2 = 0{
				ds_list_insert(orbits,0,instance_create_depth(x,y,depth-10,objPlayerOrbit));
			}else{
				ds_list_add(orbits,instance_create_depth(x,y,depth-10,objPlayerOrbit));
			}
		}
		//更新无人机倍率数据
		orbit_refresh_buff();
		//设置无人机位置
		if nums > 1{
			for(var i = 0;i < nums;i++){
				var dir = 270+(-0.5+i/(nums-1))*(180+min(nums*5,50));
				set_orbit(i,lengthdir_x(25,dir),lengthdir_y(40,dir),lengthdir_x(10,dir),lengthdir_y(25,dir));
			}
		}else{
			set_orbit(0,lengthdir_x(25,270),lengthdir_y(40,270),lengthdir_x(10,270),lengthdir_y(25,270))
		}
	}else{
		with(objPlayerOrbit){instance_destroy();}
	}
}