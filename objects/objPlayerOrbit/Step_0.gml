if keyboard_check(vk_space) && _s <= 0 && !global.froze{
	for(var i = 0;i < shoot_bullet;i++){
		var _i = instance_create_depth(x+0.5,y,global.bullet_depth,objPlayerMissle);
		_i.sprite_index = sprBDrone1;
		_i.gravity = 0.1;
		_i.gravity_direction = 90;
		_i.vspeed = 2;
		if shoot_bullet <= 5{
			_i.dspd = -(shoot_bullet-1)*0.5+i
		}else{
			_i.dspd = -2+i/(shoot_bullet-1)*4;
		}
		_i.auto_angle = true;
		_i.auto_angle_d = -90;
		_i.dmg = atk;
		_i.range = range;
		_i.sound = sound;
	}
	audio_play_sound(p_atk_uavvolley_n,1,false);
	if instance_exists(objPlayer) && objPlayer.skill = 36{
		if instance_number(objBDeepColor) <= 114{
			var _i = instance_create_depth(x,y,depth+1,objBDeepColor);
			_i.target = id;
		}
	}
	_s = shoot_cd;
}

if _s > 0{
	_s -= 1;
}

if !ed && image_alpha < 1{
	image_alpha += 0.05;
}