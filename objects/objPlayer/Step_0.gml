if stuck <= 0 && !global.froze{
	if keyboard_check(vk_up){
		sprite_index = sprPlayerAmiyaUp;
		image_xscale = 1;
	}else if keyboard_check(vk_right) && !keyboard_check(vk_left){
		sprite_index = sprPlayerAmiyaRight;
		image_xscale = 1;
	}else if keyboard_check(vk_left) && !keyboard_check(vk_right){
		sprite_index = sprPlayerAmiyaRight;
		image_xscale = -1;
	}else{
		sprite_index = sprPlayerAmiyaStop;
		image_xscale = 1;
	}

	var input_x = keyboard_check(vk_right)-keyboard_check(vk_left);
	var input_y = keyboard_check(vk_down)-keyboard_check(vk_up);
	var input_speed = move_speed*(1-keyboard_check(vk_shift)*0.5);

	x = clamp(x+input_x*input_speed,65,300-65);
	y = clamp(y+input_y*input_speed,35,400-35);
}

if (keyboard_check(vk_space) || autoattack) && _s <= 0 && stun <= 0 && !global.froze{
	if skill_sptype[skillselect] = sp_type.Attacked && skill = -1{
		skill_sp[skillselect] = min(skill_sp[skillselect]+skill_spspd,skill_spneed[skillselect]);
	}
	if skill_casttype[skillselect] = cast_type.AutoWhenAttack{
		event_user(1);
	}
	event_user(0);
	_s = shoot_cd;
}

if _s > 0{
	_s -= 1;
}

if undead > 0 && hp < 1{
	hp = 1;
}

if hp <= 0{
	hp = 0;
	if lifepoint > 1{
		//dead
		if semi_lifepoint > semi_lifepoint_used{
			semi_lifepoint_used += 1;
		}else{
			lifepoint -= 1;
		}
		inv = 120;
		audio_play_sound(b_char_dead,4,false);
		if global.hard_debuff3{
			global.luck_rate = max(0.1,global.luck_rate-0.2);
		}
		if skill_casttype[skillselect] = cast_type.AutoWhenDead{
			event_user(1);
		}
		if skill != -1{
			skill_time = 0;
			event_user(3);
		}
		
		//respawn
		hp = maxhp;
		x = 150;
		y = 280;
		stun = 0;
		stuck = 0;
		if skill_casttype[skillselect] = cast_type.AutoWhenRespawn{
			event_user(1);
		}
	}else{
		audio_stop_all();
		audio_play_sound(v_bat_f_05,2,false);
		show_message("游戏结束！分数:"+string(score)+"\n结算画面我还没做啊哈哈");
		game_restart();
	}
}else if !global.froze{
	if hp <= maxhp/2 && skill_casttype[skillselect] = cast_type.AutoWhenHPLow{
		event_user(1);
	}
	hp = min(hp+autoregen/room_speed,maxhp);
	if skill = -1{
		if skill_sptype[skillselect] = sp_type.Auto{
			skill_sp[skillselect] = min(skill_sp[skillselect]+skill_spspd/room_speed*2,skill_spneed[skillselect]);
		}
		
		if skill_sp[skillselect] = skill_spneed[skillselect] && skill_charge[skillselect] > 1 && skill_charged[skillselect] < skill_charge[skillselect]{
			skill_charged[skillselect] += 1;
			skill_sp[skillselect] = 0;
		}
		
		if keyboard_check_pressed(ord("S")){
			skillselect = (skillselect + 1) mod 3;
		}else if ((keyboard_check_pressed(ord("X")) && skill_casttype[skillselect] = cast_type.Cast) || skill_casttype[skillselect] = cast_type.Auto){
			event_user(1);
		}
	}else if skill_duration[skillselect] != -1{
		skill_time -= 1;
		if skill_time <= 0{
			event_user(3);
		}
	}
	
	if y <= 120{
		with(objDropedPoint){acce = 1;range = -1;}
	}
	
	if instance_exists(objEnemyBullet) && inv = 0{
		var _bt = instance_nearest(x,y,objEnemyBullet);
		if collision_circle(x+0.5,y+0.5,6,_bt,false,true) && !place_meeting(x,y,_bt){
			part_particles_create(global.part_system,(x+_bt.x)/2,(y+_bt.y)/2,part_nearbullet,5);
			score += 5;
		}
	}
}
if xp >= xpneed && level < maxlevel{
	level += 1;
	xp -= xpneed;
	level_refresh();
	orbit_refresh();
}


if heal_time > 0{
	if healling_cd = -1 || (heal_time mod healling_cd) = 0{
		hp = min(maxhp,hp+heal);
	}
	heal_time -= 1;
}
if stun > 0{
	stun -= 1;
}
if stuck > 0{
	stuck -= 1;
}
if undead > 0{
	undead -= 1;
}
if inv > 0{
	inv -= 1;
	image_alpha = 1-min(1,inv/60)*(dcos(inv*20)+1)*0.4;
}else{
	image_alpha = 1;
}