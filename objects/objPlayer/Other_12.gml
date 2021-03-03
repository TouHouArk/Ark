///@desc skill casted
switch(skill){
	case 1:
		atkspd += 90;
		audio_play_sound(choose(amiya_battle1,amiya_battle2),2,false);
	break;
	case 2:
		with(skill_effect){instance_change(objESkillAmiya1,true)}
		audio_play_sound(choose(amiya_battle1,amiya_battle3),2,false);
	break;
	case 3:
		with(skill_effect){instance_change(objESkillAmiya2,true)}
		skill_tag[0] = atkbuff*1.3;
		atkbuff += skill_tag[0];
		skill_tag[1] = maxhpbuff;
		maxhpbuff += skill_tag[1];
		audio_play_sound(choose(amiya_battle3,amiya_battle4),2,false);
	break;
	
	case 4:
		disarm = skill_duration[skillselect]*room_speed/2;
		healling_cd = round(room_speed/2);
		heal = atk*1.5;
		heal_time = disarm;
		with(skill_effect){event_user(1);}
	break;
	case 5:
		skill_tag[0] = defencebuff*0.8;
		defencebuff += skill_tag[0];
	break;
	case 6:
		skill_tag[0] = atkbuff*0.7;
		atkbuff += skill_tag[0];
	break;
	case 7:
		shoot_combo_delay = 5;
	break;
	case 8:
		global.money += 2;
		cast_instant();
		if global.fun{
			skill_sp[skillselect] = skill_spneed[skillselect]-1;
		}
	break;
	case 9:
		skill_tag[0] = atkbuff*1.2;
		atkbuff += skill_tag[0];
		skill_tag[1] = shootbuff*0.5;
		shootbuff += skill_tag[1];
	break;
	case 10:
		skill_tag[0] = atkbuff*1.7;
		atkbuff += skill_tag[0];
	break;
	case 11: 
		autoattack = true;
		if global.fun{
			skill_time = 240;
		}
	break;
	case 12:
		skill_tag[0] = atkbuff*2.1;
		atkbuff += skill_tag[0];
		shoot_bullet += -1;
	break;
	case 13:
		if skill_duration[skillselect] = -1{
			skill_tag[0] = atkbuff*1.6;
			atkbuff += skill_tag[0];
			skill_tag[1] = 50;
			atkspd += 50;
		}else{
			skill_tag[0] = atkbuff*0.8;
			atkbuff += skill_tag[0];
			skill_tag[1] = 25;
			atkspd += 25;
		}
	break;
	case 14:
		skill_tag[0] = atkbuff*0.4;
		atkbuff += skill_tag[0];
		undead = skill_duration[skillselect]*room_speed/2;
	break;
	case 15:
		skill_tag[0] = defencebuff*-0.7;
		defencebuff += skill_tag[0];
		skill_tag[1] = atkbuff*2;
		atkbuff += skill_tag[1];
	break;
	case 16:
		hp = maxhp;
	break;
	case 17:
		with(skill_effect){instance_change(objEDefence,true)}
		disarm = skill_duration[skillselect]*room_speed/2;
		skill_tag[0] = defencebuff*1.3;
		defencebuff += skill_tag[0];
		skill_tag[1] = resistbuff*0.8;
		resistbuff += skill_tag[0];
		skill_tag[2] = maxhp*0.03;
		autoregen += skill_tag[1];
	break;
	case 18:
		cast_instant();
	break;
	case 19:
		skill_tag[0] = shootbuff*0.7;
		shootbuff += skill_tag[0];
		skill_tag[1] = atkbuff*2;
		atkbuff += skill_tag[1];
	break;
	case 20:
		var _i = instance_create_depth(x,y,-100,objAnimeBuff);
		_i.sprite_index = sprEHeal;
		_i.target = id;
		_i.alarm[0] = 1;
		audio_play_sound(p_atk_heal_n,1,false);
	break;
	case 21:
		inv = 10*room_speed/2;
		disarm = 10*room_speed/2;
		skill_tag[0] = shootbuff*-0.3;
		shootbuff += skill_tag[0];
		skill_tag[1] = atkbuff*2.4;
		atkbuff += skill_tag[1];
		skill_tag[2] = defencebuff*1.5;
		defencebuff += skill_tag[2];
	break;
	case 22:
		skill_tag[0] = atkbuff*0.8;
		atkbuff += skill_tag[0];
	break;
	case 23:
	break;
	case 24:
		skill_tag[0] = atkbuff*0.5;
		atkbuff += skill_tag[0];
		shoot_bullet += 3;
	break;
	case 25:
		dmgtype = damage_type.Physic;
		shoot_combo_delay = 3;
		with(skill_effect){instance_change(objEExsuiai,true)}
	break;
	case 26:
		cast_instant();
	break;
	case 27:
		dmgtype = damage_type.Physic;
		skill_tag[0] = shootbuff*0.25;
		shootbuff += skill_tag[0];
		skill_tag[1] = atkbuff*2;
		atkbuff += skill_tag[1];
		with(skill_effect){instance_change(objESchwarz,true)}
	break;
	case 28:
		skill_tag[0] = atkbuff*0.7;
		atkbuff += skill_tag[0];
		with(objPlayerOrbitClick){skilling = true;}
	break;
	case 29:
		skill_tag[0] = atkbuff*1.2;
		atkbuff += skill_tag[0];
		instance_create_depth(x,y,depth+1,objBTomimi);
	break;
	case 30:
		disarm = skill_duration[skillselect]*room_speed/2;
		stuck = skill_duration[skillselect]*room_speed/2;
	break;
	case 31:
		skill_tag[0] = shootbuff*-0.8;
		shootbuff += skill_tag[0];
	break;
	case 32:
		skill_tag[0] = shootbuff*-0.7;
		shootbuff += skill_tag[0];
	break;
	case 33:
		skill_tag[0] = atkbuff*1.3;
		atkbuff += skill_tag[0];
		skill_tag[1] = shootbuff*-0.7;
		shootbuff += skill_tag[1];
		autoattack = true;
	break;
	case 34:
		skill_tag[0] = orbit_atkbuff*1;
		orbit_atkbuff += skill_tag[0];
	break;
	case 35: //WIP
	break;
	case 36:
		skill_tag[0] = orbit_atkbuff*0.6;
		orbit_atkbuff += skill_tag[0];
		autoregen += 50;
	break;
	case 37:
		_s = skill_time;
		event_user(0);
	break;
	case 38:
		skill_tag[0] = atkbuff*2;
		atkbuff += skill_tag[0];
	break;
	case 39:
		skill_tag[0] = atkbuff*0.8;
		atkbuff += skill_tag[0];
		skill_tag[1] = orbit_atkbuff*0.8;
		orbit_atkbuff += skill_tag[1];
		orbit_range += 10;
	break;
	case 40:
		skill_tag[0] = shootbuff*-0.7;
		shootbuff += skill_tag[0];
		with(skill_effect){event_user(1);}
	break;
	case 41: //WIP
	break;
	case 42:
		healling_cd = room_speed/2;
		heal = atk*0.35;
		heal_time = 5*room_speed/2;
		with(skill_effect){event_user(0);}
	break;
	case 43:
		skill_tag[0] = atkbuff*1;
		atkbuff += skill_tag[0];
		atkspd += 100;
		with(skill_effect){event_user(1);}
	break;
	case 44:
		skill_tag[0] = atkbuff*1;
		atkbuff += skill_tag[0];
		skill_tag[1] = defencebuff*3;
		defencebuff += skill_tag[1];
		with(skill_effect){event_user(1);}
	break;
	case 45:
		skill_tag[0] = atkbuff*1;
		atkbuff += skill_tag[0];
		skill_tag[1] = resistbuff*1.5;
		defencebuff += skill_tag[1];
		with(skill_effect){event_user(1);}
	break;
	case 46:
		skill_tag[0] = atkbuff*0.3;
		atkbuff += skill_tag[0];
	break;
	case 47:
		orbit_num -= 1;
		skill_tag[0] = atkbuff*1;
		atkbuff += skill_tag[0];
		atkspd += 200;
		skill_tag[1] = orbit_atkbuff*0.5;
		orbit_atkbuff += skill_tag[1];
		orbit_atkspd += 200;
	break;
	case 48: //WIP
	break;
	case 49: //WIP
	break;
	case 50: //WIP
	break;
	case 51:
		skill_tag[0] = shootbuff*0.5;
		shootbuff += skill_tag[0];
		skill_tag[0] = atkbuff*0.9;
		atkbuff += skill_tag[0];
	break;
}
_s = 0;
level_refresh();
orbit_refresh();