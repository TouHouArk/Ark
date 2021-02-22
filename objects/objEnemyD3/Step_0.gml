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
					vspeed = spd;
				}else{
					_a = 0;
					vspeed = 0;
					action = choose(1,2);
				}
			break;
			case 1 :
				if _a = 60{
					vspeed = -1;
				}
				if _a = 70{
					vspeed = 4;
				}
				if _a >= 30 && _a mod 15 = 0 && _a < 75{
					for(var i = 0;i < 2;i++){
						var _aa = floor(_a/15-2)
						var _i = instance_create_depth(30-i*50,80-i*20+_aa*80,depth-10,objEnemyD1);
						_i.type = 10;
						_i._t = 200-i*45-_aa*40;
						_i.hspeed = 2;
						_i._a = -30-i*45+20;
						_i.spd = 2;
						_i.atk = 500;
						_i.lifetime = 800;
						
						_i = instance_create_depth(270+i*50,80-i*20+_aa*80,depth-10,objEnemyD1);
						_i.type = 10;
						_i._t = 200-i*45-_aa*40;
						_i.hspeed = -2;
						_i._a = -30-i*45+20;
						_i.spd = 2;
						_i.atk = 500;
						_i.lifetime = 800;
					}
				}
				/*if _a >= 70 && _a mod 15 = 10 && y <= 400{
					var _i = instance_create_depth(x,y,depth-10,objEnemyD1);
					_i.type = 10;
					_i._t = 240;
					_i.spd = 2;
					_i.atk = 500;
				}*/
				if _a >= 70 && y >= 450{
					action = 0;
					_a = 0;
					vspeed = 0;
				}
			break;
			case 2 :
				if _a = 10{
					hspeed = choose(-2,2);
				}
				if _a = 45{
					hspeed = 0;
				}
				if _a = 50{
					hspeed = sign(150-x)*4;
				}
				if _a > 50 && _a <= 200{
					if x <= 80 || x >= 220{
						hspeed = -hspeed;
					}
					if _a mod 6 = 0{
						for(var i = 0;i < 3;i++){
							var _i = instance_create_depth(x,y+30-i*5,global.bullet_depth,objEnemyBullet);
							_i.sprite_index = sprBD4;
							_i.speed = 4;
							_i.direction = 270;
							_i.dmg = round(atk/3);
							_i.image_angle = 180;
						}
					}
				}
				if _a >= 200{
					hspeed = sign(150-x);
					if abs(x-150) < 1{
						x = 150;
						_a = 0;
						action = 0;
					}
				}
			break;
		}
	break;
	case 10 :
		if y <= 100{
			vspeed = spd;
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