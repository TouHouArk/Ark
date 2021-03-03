if !st && image_alpha < 1{
	image_alpha += 0.05;
	if image_alpha = 1{
		st = true;
	}
}else if ed && image_alpha > 0{
	image_alpha -= 0.05;
	if image_alpha <= 0{
		instance_destroy();
	}
}
	
if atking{
	_a += 1;
	if _a <= time/4{
		image_angle = -30*sine_ease_out_move(_a/time*4);
		can_damage = false;
		light = _a/time*4
	}else if _a <= time*2/4{
		image_angle = -30+sine_ease_move(_a/time*4-1)*240;
		can_damage = true;
	}else{
		image_angle = 210-(_a/time*4-2)/2*210;
		can_damage = true;
		light = min(1,8-_a/time*8);
	}
	if _a >= time{
		image_angle = 0;
		_a = 0;
		atking = false;
		can_damage = false;
		ds_list_clear(meeting_objects);
		light = 0;
	}
	var opx = blade_px;
	var opy = blade_py;
	blade_px = x+lengthdir_x(60,image_angle);
	blade_py = y+lengthdir_y(60,image_angle);
	if _a >= time/4{
		var _i = instance_create_depth((opx+blade_px)/2,(opy+blade_py)/2,depth+1,objEShadowAlpha);
		_i.image_blend = c_white;
		_i.sprite_index = sprETomimi1;
		_i.image_angle = point_direction(opx,opy,blade_px,blade_py)+180-(_a > time*2/4)*180;
		_i.image_xscale = point_distance(opx,opy,blade_px,blade_py)/10;
		_i.image_alpha = 1-min(0,(_a/time*2-1));
		_i.spd = 0.1;
		
		var _i2 = -1;
		with(_i){_i2 = instance_copy(false)}
		_i2.image_index = 1;
		_i2.spd = 0.25;
	}
}