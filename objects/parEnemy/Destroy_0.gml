if lifetime != 0{
	with(instance_create_depth(x,y,depth+1,objEnemyDie)){
		sprite_index = other.sprite_index;
		image_index = other.image_index;
		image_angle = other.image_angle;
		vspeed = other.vspeed;
		hspeed = other.hspeed;
		high_o = high;
	}
	(instance_create_depth(x,y,depth-10,objBoomBuff)).maxr = max(sprite_width,sprite_height)/2;
	score += 100;
	global.enemy_killed += 1;
	drop_point(xp);
	//objPlayer.xp += xp*global.exp_rate;
	if elite >= 1{
		global.money += global.elite_money;
		with(objEnemyBullet){instance_create_depth(x,y,50,objDropedPoint);instance_destroy();}
		with(objEnemyMissle){drop_point(_b);instance_destroy();}
		if get_chance() <= global.elite_drop_rate*global.luck_rate{
			instance_create_depth(x,y,0,objLootBox);
		}
	}
}