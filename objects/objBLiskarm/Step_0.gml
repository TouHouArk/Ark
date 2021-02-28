_a += 1;
if _a = 1{
	for(var i = 0;i < lines;i++){
		var ang = 90+(i/(lines-1)-0.5)*range_angle+irandom_range(-3,3);
		var _i = instance_create_depth(x,y,global.bullet_depth,objELiskarm);
		_i.tgx = x+lengthdir_x(range,ang);
		_i.tgy = y+lengthdir_y(range,ang);
		_i.dmg = dmg;
		_i.dmgtype = dmgtype;
		_i.daze_addon = daze_addon;
		_i.stun_addon = stun_addon;
		_i.ctrl_addon = ctrl_addon;
		with(_i){event_user(0)}
	}
}
if _a = 4{
	var _cl = ds_list_create();
	collision_circle_list(x,y,range,parEnemy,false,true,_cl,false);
	for(var i = 0;i < ds_list_size(_cl);i++){
		if abs(point_direction(x,y,_cl[| i].x,_cl[| i].y) - 90) <= range_angle*0.5{
			with(_cl[| i]){enemy_get_attacked(other.id)}
		}
	}
	ds_list_destroy(_cl)
}
if _a = 10{
	instance_destroy();
}