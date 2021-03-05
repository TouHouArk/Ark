if !explode{
	image_angle += aspd;
}else{
	if _a mod dmg_cd = 0{
		var enemy = ds_list_create();
		var num = collision_circle_list(x,y,range,parEnemy,false,true,enemy,false);
		for(var i = 0;i < num;i++){
			with(enemy[| i]){enemy_get_attacked(other.id)}
		}
		ds_list_clear(enemy);
	}
	_a += 1;
	if _a <= 30{
		showrange = range*(0.1+sine_ease_out_move(_a/30)*0.9);
	}
	if _a >= lifetime-90{
		showrange = range*(0.3+sine_ease_in_move((lifetime-_a)/90)*0.7);
		image_alpha = (lifetime-_a)/90;
	}
	if _a >= lifetime{
		instance_destroy();
	}else if _a mod 3 = 0{
		var ra = irandom(359);
		var rd = irandom(abs(range/10))*10
		var _i = instance_create_depth(x+lengthdir_x(rd,ra),y+lengthdir_y(rd,ra),-100,objEFog);
		_i.col = mycol;
		_i.maxalp = 0.1;
		_i.spd = 0.005;
		_i.pow = 0.6+irandom(4)/10;
		_i.direction = ra;
		_i.speed = 0.2-rd/range*0.05;
		_i.image_xscale = 0.5;
		_i.image_yscale = 0.5;
	}
}