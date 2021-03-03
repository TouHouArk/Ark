switch(type){
	case 0 :
		_a += 1;
		switch(action){
			case 0 :
				if y > 420{
					y = -80;
					var _i = instance_create_depth(150,600,-200,objED3);
					_i.vspeed = -12;
					_i.alarm[0] = 60;
					_i.image_angle = 180;
				}
				if y <= 100{
					vspeed = spd*spdbuff;
				}else{
					_a = 0;
					vspeed = 0;
					action = choose(1,2,3);
				}
			break;
			case 1 :
				if _a = 60{
					nspd = -1;
				}
				if _a >= 70{
					nspd = -1+min(5,(_a-70)/4);
					if (_a - 70) mod _t = 0 && y <= 250{
						bullets = 5+sign((_a - 70) mod (_t*2))
						for(var i = 0;i < bullets;i++){
							var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyBullet);
							_i.sprite_index = sprBD3;
							_i.hspeed = -(bullets-1)*0.25+i*0.5;
							_i.vspeed = -1;
							_i.gravity = 0.02;
							_i.dmg = atk;
						}
					}
				}
				if _a >= 30 && _a mod 15 = 0 && _a < 75{
					var _aa = floor(_a/15-2)
					for(var i = 0;i < 2;i++){
						var _i = instance_create_depth(30-i*50,80-i*20+_aa*80,depth-10,objEnemyD1);
						_i.type = 10;
						_i._t = 250-i*45-_aa*60;
						_i.hspeed = 2;
						_i._a = -30-i*45+20;
						_i.spd = 4;
						_i.atk = 500;
						_i.lifetime = 800;
						_i.xp = 1;
						
						_i = instance_create_depth(270+i*50,80-i*20+_aa*80,depth-10,objEnemyD1);
						_i.type = 10;
						_i._t = 250-i*45-_aa*60;
						_i.hspeed = -2;
						_i._a = -30-i*45+20;
						_i.spd = 4;
						_i.atk = 500;
						_i.lifetime = 800;
						_i.xp = 1;
					}
				}
				if _a >= 70 && y >= 450{
					action = 0;
					_a = 0;
					nspd = 0;
				}
				vspeed = nspd*spdbuff;
				hspeed = 0;
			break;
			case 2 :
				image_angle = point_direction(x,y,150,180)+90;
				if _a = 10{
					nspd = choose(-2,2);
				}
				if _a = 45{
					nspd = 0;
				}
				if _a = 50{
					nspd = sign(150-x)*4;
				}
				if _a > 50 && _a <= 200{
					if (x <= 80 && sign(nspd) = -1) || (x >= 220 && sign(nspd) = 1){
						nspd = -nspd;
						for(var i = 0;i < 20;i++){
							var _i = instance_create_depth(x,y,global.bullet_depth,objEnemyBullet);
							_i.sprite_index = sprBD3;
							_i.speed = 3;
							_i.friction = 0.01;
							_i.direction = i*18;
							_i.image_angle = _i.direction-90;
							_i.dmg = atk;
						}
					}
					if _a mod _t = 0{
						var bullets = 3+sign(_a mod (_t*2))
						for(var i = 0;i < bullets;i++){
							var _i = instance_create_depth(x+lengthdir_x(30,image_angle-90),y+lengthdir_y(30,image_angle-90),global.bullet_depth,objEnemyBullet);
							_i.sprite_index = sprBD4;
							_i.speed = 2;
							_i.direction = image_angle-90-18*(i-(bullets-1)/2);
							_i.image_angle = _i.direction-90;
							_i.dmg = atk;
						}
					}
				}
				if _a >= 200{
					nspd = sign(150-x);
					if abs(x-150) < 1{
						x = 150;
						nspd = 0;
						hspeed = 0;
						_a = 0;
						action = 0;
						image_angle = 0;
					}
				}
				hspeed = nspd*spdbuff;
				vspeed = 0;
			break;
			case 3 :
				if _a = 1{
					td = choose(-1,1);
				}
				if _a >= 0 && _a <= 20{
					image_angle = td*(_a/20)*30
				}
				if _a >= 40 && _a <= 60{
					image_angle = td*(1 - (_a-40)/10)*30
				}
				if _a >= 80 && _a <= 100{
					image_angle = td*(-0.5 + (_a-80)/20*1.5)*60
				}
				if _a >= 120 && _a <= 140{
					image_angle = td*(1 - (_a-120)/10)*60
				}
				if _a >= 160 && _a <= 180{
					image_angle = td*(-2 + (_a-160)/10)*30
				}
				if _a = 180{
					image_angle = 0;
				}
				if _a mod 40 = 20 && _a < 180{
					var skip = 10+irandom(15);
					var anti = (1-sign(image_angle))/2;
					for(var i = 0;i <= 40;i++){
						if i = skip - 4 {
							i = skip + 4;
						}
						var _i = instance_create_depth(x+lengthdir_x(30,image_angle-90),y+lengthdir_y(30,image_angle-90),global.bullet_depth,objEnemyBulletJump);
						_i.sprite_index = sprBD4;
						_i.speed = i*0.8;
						_i.friction = 0.05*_i.speed;
						_i.direction = image_angle-90;
						_i.image_angle = image_angle+90-20+220*anti;
						_i.dmg = atk;
						_i.jump_times = 1;
						_i.jump_speed[0] = 3/16+i/20;
						_i.jump_direction[0] = -90+180*anti;
						_i.jump_dspd[0] = -0.5+1*anti;
						_i.alarm[0] = 60;
						_i.lifetime = 360+abs(image_angle);
					}
				}
				if _a = 240{
					_a = 0;
					action = 0;
					nspd = 0;
				}
				hspeed = 0;
				vspeed = 0;
			break;
		}
	break;
	case 10 :
		if y <= 100{
			vspeed = spd*spdbuff;
		}else{
			vspeed = 0;
			_a += 1;
			if _a = 60{
				if abs(x - 150) <= 30{
					hspeed = choose(-1,1);
				}else{
					hspeed = sign(150 - x);
				}
			}
			if _a = 120{
				hspeed = 0;
			}
			if _a >= 360{
				_a = 0
			}
		}
	break;
}
event_inherited();