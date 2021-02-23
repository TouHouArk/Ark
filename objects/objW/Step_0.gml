if !ast{
	if abs(x-home_x) >= 1 || abs(y-home_y) >= 1{
		x += sign(home_x-x);
		y += sign(home_y-y);
	}else{
		x = home_x;
		y = home_y;
		ast = true;
		inv = false;
	}
}else{
	if !inv{
		if (hp <= maxhp/2 || last_spell) && oa_st{
			_a += 1;
			if !instance_exists(objWDebuff){
				instance_create_depth(objPlayer.x,objPlayer.y,100,objWDebuff);
			}
			event_user(spell);
		}else if !spelling{
			_a += 1;
			event_user(spell+10);
		}
		if !last_spell && hp > 1 && hp <= maxhp/2 && !oa_st && !spelling{
			instance_create_depth(0,0,-200,objOA);
			objOA.text = spell_name[spell];
			objOA.target = id;
			spelling = true;
		}
	}else{
		hp = min(round(hp+maxhp/180),maxhp);
		if hp = maxhp{
			inv = false;
			_a = 0;
		}
	}
}
if hp <= 0{
	change_bullet_to_point();
	with(objEnemyD4){instance_destroy()}
	if life > 1{
		life -= 1;
		inv = true;
		oa_st = false;
		spell += 1;
		spelling = false;
		with(objOA){ed = true;}
		if life = 1{
			last_spell = true;
			instance_create_depth(0,0,-200,objOA);
			objOA.text = spell_name[spell];
			objOA.target = id;
		}
	}else{
		inv = true;
		ed = true;
		sprite_index = sprWDie;
		vspeed = -5;
		hspeed = irandom_range(-5,5)/10;
		gravity = 0.25;
		with(objOA){ed = true;}
		if powerup_effect != -1 && instance_exists(powerup_effect){
			instance_destroy(powerup_effect);
		}
		var bullets = xp/10;
		var max_x = 80;
		var max_y = 80;
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
			point_direction(x,y,150+_tgx,100+_tgy),
			point_distance(x,y,150+_tgx,100+_tgy),
			4);
			_i.inv = true;
			_i._b = 10;
			_i._bang = point_direction(tgx+_tgx,tgy+_tgy,tgx,tgy);
			_i.sprite_index = sprBW2;
			_i.image_angle = irandom(359);
			_i.image_index = 1;
			_i.image_speed = 0;
		}
	}
	hp = 1;
}
if ed && y >= 400{
	instance_destroy();
}
event_inherited();