_a += 1;
small_angle = 45+sine_ease_out_move(min(_a/10,1))*90;
if _a = dmg_cd-5{
	audio_play_sound(p_skill_blacktimewand_shot,1,false);
	var _i = instance_create_depth(x,y,global.bullet_depth,objAnimeBuff);
	_i.sprite_index = sprEMostima;
	_i.image_xscale = image_xscale*choose(-1,1);
	_i.image_yscale = image_yscale;
}
if _a = dmg_cd{
	can_damage = true;
	var _i = instance_create_depth(x,y,depth+1,objEShadowScale);
	_i.image_blend = c_white;
	_i.sprite_index = sprBMostima;
	_i.image_speed = 0;
	_i.image_index = 1;
	_i.image_alpha = 0.75;
	_i.image_angle = 45;
	_i.aspd = 1;
	_i.spd = 0.01;
	
	now_time += 1;
	if now_time >= times{
		ed = true;
	}else{
		_a = 0;
	}
}else{
	can_damage = false;
}

if !ed && image_alpha < 1{
	image_alpha += 0.05;
}
if ed && image_alpha > 0{
	image_alpha -= 0.1;
	if image_alpha <= 0{
		instance_destroy();
	}
}