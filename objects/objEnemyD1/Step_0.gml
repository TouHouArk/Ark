if daze <= 0{
	switch(type){
		case 0 :
			speed = spd*spdbuff;
			direction = dir;
		break;
		case 1 :
			_a += 1;
			speed = spd*spdbuff;
			direction = dir+_a*aspd;
		break;
		case 10 :
			_a += 1;
			if _a = 20{
				ox = x;
				oy = y;
			}
			if _a >= 20 && _a mod 20 = 0{
				var tx = ox+irandom_range(-5,5);
				var ty = oy+irandom_range(-5,5);
				vspeed = 0;
				hspeed = 0;
				speed = point_distance(x,y,tx,ty)/20;
				direction = point_direction(x,y,tx,ty);
			}
			if _a >= _t{
				ox += lengthdir_x(spd,dir);
				oy += lengthdir_y(spd,dir);
			}
			if place_meeting(x,y,objPlayer){
				lifetime = 0;
				with(instance_create_depth(x,y,depth-10,objEnemyBoom)){
					image_xscale = 64/32;
					image_yscale = 64/32;
					dmg = other.atk;
					dmgtype = damage_type.Physic;
					alarm[0] = 1;
				}
				(instance_create_depth(x,y,depth-10,objBoomBuff)).maxr = 64;
				audio_play_sound(p_skill_explocar,1,false)
				instance_destroy();
			}
		break;
	}
}
event_inherited();