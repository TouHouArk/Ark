function change_bullet_to_point(){
	repeat(2){
		with(objEnemyMissle){drop_point(_b);instance_destroy();}
		if get_chance() <= global.elite_drop_rate*global.luck_rate{
			instance_create_depth(x,y,0,objLootBox);
		}
	}
	with(objEnemyBullet){instance_create_depth(x,y,50,objDropedPoint);instance_destroy();}
}