switch(action){
	case 0 :
		if _a = 119{
			action = irandom_range(1,4);
		}
		if _a = 120{
			_a = 0;
		}
	break;
	case 1 :
		if _a >= 120 && _a <= 240 && _a mod 15 = 0{
			var mtgx = choose(-80,-40,40,80);
			var mtgy = choose(-40,-20,20,40);
			while(point_distance(tgx,tgy,home_x+mtgx,home_y+mtgy) <= 50){
				mtgx = choose(-80,-40,40,80);
				mtgy = choose(-40,-20,20,40);
			}
			tgx = home_x + mtgx;
			tgy = home_y + mtgy;
			supermove = true;
			projectile_W_1(instance_create_depth(x,y,global.bullet_depth,objEnemyMissle));
		}
		if _a = 255{
			tgx = home_x;
			tgy = home_y;
			supermove = true;
		}
		if _a >= 255 && x = tgx && y = tgy{
			_a = 0;
			action = 0;
		}
	break;
	case 2 :
		if _a = 120{
			tgy = home_y - 40;
			supermove = true;
		}
		if _a = 130{
			tgx = choose(70,230);
		}
		if _a = 170{
			tgx = 300 - tgx;
		}
		if _a = 260{
			tgx = home_x;
		}
		if _a >= 120 && _a <= 300 && _a mod 8 = 0{
			projectile_W_2(instance_create_depth(x,y,global.bullet_depth,objEnemyMissle));
		}
		if _a = 330{
			skill = true;
			image_index = 0;
			sprite_index = sprWSkill;
		}
		if _a =  360{
			with(objEnemyMissle){
				if sprite_index = sprBW1{
					alarm[0] = 1;
				}
			}
		}
		if _a = 400{
			tgx = home_x;
			tgy = home_y;
			supermove = true;
		}
		if _a >= 400 && x = tgx && y = tgy{
			_a = 0;
			action = irandom(2);
		}
	break;
	case 3 :
		if _a >= 120 && _a <= 180{
			projectile_W_3(instance_create_depth(home_x,home_y,global.bullet_depth,objEnemyMissle),180+(_a-120)*6,80,1);
		}
		if _a >= 130 && _a <= 190{
			projectile_W_3(instance_create_depth(home_x,home_y,global.bullet_depth,objEnemyMissle),-(_a-130)*6,70,2);
		}
		if _a >= 150 && _a < 180{
			projectile_W_3(instance_create_depth(home_x,home_y,global.bullet_depth,objEnemyMissle),270-(_a-150+1)*6,60,3);
			projectile_W_3(instance_create_depth(home_x,home_y,global.bullet_depth,objEnemyMissle),270+(_a-150)*6,60,3);
		}
		
		if _a >= 180 && _a <= 360{
			y = tgy+dsin((_a-180)*1.5)*5;
		}
		
		if _a >= 280 && _a <= 340 && _a mod 20 = 0{
			var _tag = (_a-280)/20+1
			with(objEnemyMissle){
				if tag = _tag{
					dspd = sign(aspd)*1.5;
					speed = 0.1;
					friction = -0.1;
					alarm[0] = 30+ other._a - 280;
				}
			}
		}
		
		if _a = 360{
			_a = 0;
			action = 0;
		}
	break;
	case 4 :
		if _a = 120{
			tgx = 150;
			tgy = -20;
		}
		if _a = 200{
			x = choose(40,260);
			y = 200;
			tgx = 300-x;
			tgy = 200;
		}
		if ((_a >= 220 && _a <= 330) || (_a >= 360 && _a <= 470)) && _a mod 20 = 0{
			projectile_W_4(instance_create_depth(x,y,global.bullet_depth,objEnemyMissle),3,90);
			projectile_W_4(instance_create_depth(x,y,global.bullet_depth,objEnemyMissle),3,270);
		}
		if _a = 360{
			tgx = 300-tgx;
			tgy = 200;
		}
		if _a = 500{
			x = 150;
			y = 400;
			tgx = 150;
			tgy = 200;
			supermove = true;
		}
		if _a = 520{
			skill = true;
			image_index = 0;
			sprite_index = sprWSkill;
		}
		if _a = 500{
			var bullets = 80;
			var max_x = 70;
			var max_y = 90;
			for(var i = 0;i < bullets;i++){
				var _tgx = 0;
				var _tgy = 0;
				if i < bullets/4 || (i >= bullets/2 && i < bullets/4*3){
					_tgy = max_y*2*(-0.5 + ((i/(bullets/4)) mod 1));
				}else{
					_tgy = max_y*2*(0.5 - ((i/(bullets/4)) mod 1));
				}
				_tgx = max_x*(-1+i/bullets*2);
				var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyMissle);
				projectile_W_3(_i,
				point_direction(x,y,tgx+_tgx,tgy+_tgy),
				point_distance(x,y,tgx+_tgx,tgy+_tgy),
				4);
				_i.inv = true;
				_i._bang = point_direction(tgx+_tgx,tgy+_tgy,tgx,tgy);
				_i.sprite_index = sprBW3;
			}
		}
		if _a = 550{
			with(objEnemyMissle){
				if tag = 4{
					instance_destroy();
				}
			}
		}
		if _a = 600{
			tgx = home_x;
			tgy = home_y;
			supermove = true;
		}
		if _a = 630{
			_a = 0;
			action = 0;
		}
	break;
}