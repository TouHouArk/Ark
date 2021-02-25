function get_mapmod_1(data,mapmod_id){
	ds_grid_resize(data,floor(mapmod_id/100),5);
	switch(mapmod_id){
		default: ds_grid_set_region(data,0,0,ds_grid_width(data)-1,ds_grid_height(data)-1,5);break;//全部障碍物
		//1 Block mapmods
		case 100: ds_grid_fill(data,20,20,20,20,20);break;//普通通路
		case 101: ds_grid_fill(data,10,20,20,20,10);break;//上下禁止部属
		case 102: ds_grid_fill(data,20,10,5,10,20);break;//中间障碍物
		case 103: ds_grid_fill(data,5,4,10,10,10);break;//顶部障碍物
		case 104: ds_grid_fill(data,20,10,29,10,20);break;//活性源石通路
		case 105: ds_grid_fill(data,10,20,10,20,10);break;//斑马线禁止部属

		//2 Block mapmods
		case 200: ds_grid_fill(data,
			21,23,
			21,23,
			21,23,
			21,23,
			21,23);break;//普通通路
		case 201: ds_grid_fill(data,
			11,33,
			20,5,
			31,13,
			5,20,
			11,33);break;//S通路
		case 202: ds_grid_fill(data,
			11,10,
			21,5,
			21,5,
			21,5,
			31,10);break;//C通路
		case 203: ds_grid_fill(data,
			10,13,
			5,23,
			5,23,
			5,23,
			10,33);break;//反C通路
		case 204: ds_grid_fill(data,
			5,5,
			22,22,
			10,10,
			22,22,
			10,10);break;//斑马线禁止部属
		case 205: ds_grid_fill(data,
			10,20,
			20,10,
			10,20,
			20,10,
			10,20);break;//交叉禁止部属

		//3 Blocks mapmods
		case 300: ds_grid_fill(data,
			21,22,23,
			21,22,23,
			21,22,23,
			21,22,23,
			21,22,23);break;//普通通路
		case 301: ds_grid_fill(data,
			21,22,23,
			21,25,23,
			21,10,23,
			21,25,23,
			21,22,23);break;//治疗符文通路
		case 302: ds_grid_fill(data,
			21,5,28,
			21,4,9,
			21,4,9,
			21,4,9,
			12,12,12);break;//推力符文通路
		case 303: ds_grid_fill(data,
			5,20,5,
			11,32,13,
			10,4,10,
			31,12,33,
			5,20,5);break;//O通路
		case 304: ds_grid_fill(data,
			10,10,10,
			1,2,3,
			10,10,10,
			1,2,3,
			10,10,10);break;//高台斑马线
		case 305: ds_grid_fill(data,
			11,30,10,
			21,4,5,
			31,30,13,
			5,4,23,
			10,30,33);break;//大S通路

		//4 Blocks mapmods
		case 400: ds_grid_fill(data,
			21,22,22,23,
			21,22,22,23,
			21,22,22,23,
			21,22,22,23,
			21,22,22,23);break;//普通通路
		case 401: ds_grid_fill(data,
			21,22,22,23,
			27,5,5,27,
			21,4,4,23,
			21,1,3,23,
			21,22,22,23);break;//防御符文O通路
		case 402: ds_grid_fill(data,
			7,6,6,20,
			4,4,11,10,
			4,11,10,5,
			11,10,5,6,
			10,5,6,6);break;//正斜线通路
		case 403: ds_grid_fill(data,
			20,6,6,7,
			10,13,4,4,
			5,10,13,4,
			6,5,10,13,
			6,6,5,20);break;//反斜线通路
		case 404: ds_grid_fill(data,
			10,10,10,10,
			9,22,22,9,
			9,22,22,9,
			9,22,22,9,
			10,10,10,10);break;//环岛桥
		case 405: ds_grid_fill(data,
			20,4,4,20,
			20,5,5,20,
			10,30,30,10,
			20,5,5,20,
			20,4,4,20);break;//H通路

		//5 Blocks mapmods
		case 500: ds_grid_fill(data,
			21,22,22,22,23,
			21,22,22,22,23,
			21,22,22,22,23,
			21,22,22,22,23,
			21,22,22,22,23);break;//普通通路
		case 501: ds_grid_fill(data,
			5,5,10,10,23,
			1,2,3,5,23,
			11,12,12,12,23,
			21,20,10,4,23,
			21,5,5,5,23);break;//奇怪通路1
		case 502: ds_grid_fill(data,
			21,6,22,6,23,
			26,6,26,6,26,
			10,10,10,10,10,
			6,5,27,5,6,
			6,5,22,5,6);break;//符文分流通路
		case 503: ds_grid_fill(data,
			5,7,20,7,5,
			1,3,20,1,3,
			30,30,29,30,30,
			1,3,20,1,3,
			5,7,20,7,5);break;//活性源石十字通路
		case 505: ds_grid_fill(data,
			20,5,5,5,5,
			20,5,10,10,10,
			20,5,10,10,10,
			20,5,5,5,25,
			20,10,10,10,10);break;//奇怪通路2
	}
	
	if data != -1{
		return data;
	}
}