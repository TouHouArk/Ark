event_inherited();

if !ast{
	if abs(x-home_x) >= 1 || abs(y-home_y) >= 1{
		x += sign(home_x-x);
		y += sign(home_y-y);
	}else{
		x = home_x;
		y = home_y;
		ast = true;
	}
}else{
	
	_a += 1;
	if _a < 60 && powerup{
		_a = 60;
	}
	if _a <= 120{
		y = tgy+dsin(_a*1.5)*5;
	}
	event_user(0);
	
	if hp <= maxhp/2 && !powerup{
		powerup = true;
		atk = atk*3;
		powerup_effect = instance_create_depth(x,y,depth-1,objESkillNormal);
		with(powerup_effect){event_user(2);}
		powerup_effect.target = id;
	}
	
	if !skill{
		if supermove && (abs(x-tgx) >= 1 || abs(y-tgy) >= 1){
				x += (tgx-x)/4*3;
				y += (tgy-y)/4*3;
				create_shadow(0);
		}else if abs(x-tgx) >= 1 || abs(y-tgy) >= 1{
				repeat(2){
					x += sign(tgx-x);
					y += sign(tgy-y);
				}
				(create_shadow(0)).image_alpha = 0.5;
		}else{
			x = tgx;
			y = tgy;
			supermove = false;
		}
	
		if x != tgx{
			image_speed = 0;
			sprite_index = sprWMove;
			image_index = 0+(x < tgx);
		}else{
			image_speed = 1;
			sprite_index = sprW;
		}
	}
}