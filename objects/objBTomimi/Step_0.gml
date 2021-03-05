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
	sprite_index = sprBTomimi2;
	var o_angle = image_angle;
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
	if _a >= time/4{
		var dx = x-last_x;
		var dy = y-last_y;
		var da = angle_difference(image_angle,last_angle);
		var buffs = floor(abs(da)/5);
		var sca = dsin(abs(da/buffs/2))/5;
		for(var i = 0;i <= buffs;i++){
			var _i = instance_create_depth(last_x+dx*i/buffs,last_y+dy*i/buffs,depth+1,objEShadowAlpha);
			_i.image_blend = c_white;
			_i.sprite_index = sprETomimi1;
			_i.image_angle = last_angle+da*i/buffs;
			_i.image_yscale = sca*60;
			_i.image_alpha = 1-min(0,(_a/time*2-1));
			_i.spd = 0.1;
			_i.image_alpha -= i/buffs*_i.spd;
			var _i2 = -1;
			with(_i){_i2 = instance_copy(false)}
			_i2.image_yscale = sca*47;
			_i2.image_index = 1;
		
			var _i3 = -1;
			with(_i){_i3 = instance_copy(false)}
			_i3.image_index = 2;
			_i3.spd = 0.2;
		}
	}
}else{
	sprite_index = sprBTomimi1;
}