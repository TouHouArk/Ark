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
		if semi_lifepoint > semi_lifepoint_used{
			semi_lifepoint_used += 1;
		}else{
			lifepoint -= 1;
		}
		inv = 120;
		if skill != -1{event_user(3);}
		hp = maxhp;
		x = 150;
		y = 280;
		stun = 0;
		audio_play_sound(b_char_dead,4,false);
		if global.hard_debuff3{
			global.luckrate = max(0.1,global.luckrate-0.2);
		}
	}else{
		audio_stop_all();
		audio_play_sound(v_bat_f_05,2,false);
		show_message("游戏结束！分数:"+string(score)+"\n结算画面我还没做啊哈哈");
		game_restart();
	}
}else if !global.froze{
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
		}else if ((keyboard_check_pressed(ord("X")) && skill_casttype[skillselect] = 0) || skill_casttype[skillselect] = 1) && (skill_sp[skillselect] = skill_spneed[skillselect] || skill_charged[skillselect] >= 1){
			skill = skill_id[skillselect];
			if skill_charged[skillselect] >= 1{
				skill_charged[skillselect] -= 1;
			}else{
				skill_sp[skillselect] = 0;
			}
			skill_effect = instance_create_depth(x,y,depth-1,objESkillNormal);
			skill_effect.target = id;
			if skill_duration[skillselect] != -1{
				skill_time = skill_duration[skillselect]*room_speed/2;
				skill_effect.alarm[0] = skill_duration[skillselect]*room_speed/2;
			}else{
				skill_time = 9999;
			}
			audio_play_sound(b_char_atkboost,1,false);
			event_user(2);
			if global.hard_debuff2{
				lifepoint = max(1,lifepoint - 1);
			}
			level_refresh();
		}
	}else if skill_duration[skillselect] != -1{
		skill_time -= 1;
		if skill_time <= 0{
			event_user(3);
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