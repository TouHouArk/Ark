///@desc skill end
switch(skill){
	case 1:
		atkspd -= 90;
	break;
	case 2:
		disarm = 10*room_speed/2;
	break;
	case 3:
		hp = 0;
		atkbuff -= skill_tag[0];
		maxhpbuff -= skill_tag[1];
	break;
	
	case 4:
		global.money += 4;
		healling_cd = -1;
		heal = 0;
	break;
	case 5:
		global.money += 2;
		defencebuff -= skill_tag[0];
	break;
	case 6:
		global.money += 2;
		atkbuff -= skill_tag[0];
	break;
	case 9:
		global.money += 2;
		atkbuff -= skill_tag[0];
		shootbuff -= skill_tag[1];
	break;
	case 10:
		atkbuff -= skill_tag[0];
	break;
	case 11: 
		autoattack = false;
		if global.fun{
			with(objPlayerBullet){
				if sprite_index = sprBCutter{
					speed = 6;
					friction = 0;
				}
			}
		}
	break;
	case 12:
		atkbuff -= skill_tag[0];
		shoot_bullet -= -1;
	break;
	case 13:
		atkbuff -= skill_tag[0];
		atkspd -= skill_tag[1];
		if hp > 0{
			skill_duration[skillselect] = -1;
		}
	break;
	case 14:
		atkbuff -= skill_tag[0];
		disarm = 10*room_speed/2;
	break;
	case 15:
		defencebuff -= skill_tag[0];
		atkbuff -= skill_tag[1];
	break;
	case 17:
		defencebuff -= skill_tag[0];
		resistbuff -= skill_tag[1];
		autoregen -= skill_tag[2];
	break;
	case 19:
		shootbuff -= skill_tag[0];
		atkbuff -= skill_tag[1];
	break;
	case 21:
		shootbuff -= skill_tag[0];
		atkbuff -= skill_tag[1];
		defencebuff -= skill_tag[2];
	break;
	case 22:
		atkbuff -= skill_tag[0];
	break;
	case 24:
		atkbuff -= skill_tag[0];
		shootbuff -= skill_tag[1];
	break;
	case 25:
		dmgtype = dmgtype_o;
		atkspd -= skill_tag[0];
		atkbuff -= skill_tag[1];
	break;
	case 27:
		dmgtype = dmgtype_o;
		shootbuff -= skill_tag[0];
		atkbuff -= skill_tag[1];
	break;
	case 28:
		atkbuff -= skill_tag[0];
		atkspd -= 80;
	break;
	case 29:
		maxhpbuff -= skill_tag[0];
		atkbuff -= skill_tag[1];
		atkspd -= 100;
	break;
	case 31:
		shootbuff -= skill_tag[0];
	break;
	case 32:
		shootbuff -= skill_tag[0];
	break;
	case 33:
		atkbuff -= skill_tag[0];
		shootbuff -= skill_tag[1];
		autoattack = false;
	break;
	case 34:
		orbit_atkbuff -= skill_tag[0];
	break;
	case 36:
		orbit_atkbuff -= skill_tag[0];
		autoregen -= 50;
	break;
	case 38:
		atkbuff -= skill_tag[0];
	break;
	case 39:
		atkbuff -= skill_tag[0];
		orbit_atkbuff -= skill_tag[1];
		orbit_range -= 10;
	break;
	case 40:
		shootbuff -= skill_tag[0];
	break;
	case 42:
		healling_cd = -1;
		heal = 0;
	break;
	case 43:
		atkbuff -= skill_tag[0];
		atkspd -= 100;
	break;
	case 44:
		atkbuff -= skill_tag[0];
		defencebuff -= skill_tag[1];
	break;
	case 45:
		atkbuff -= skill_tag[0];
		defencebuff -= skill_tag[1];
	break;
	case 46:
		atkbuff -= skill_tag[0];
	break;
	case 47:
		atkbuff -= skill_tag[0];
		atkspd -= 200;
		orbit_atkbuff -= skill_tag[1];
		orbit_atkspd -= 200;
	break;
	case 51:
		shootbuff -= skill_tag[0];
		atkbuff -= skill_tag[0];
	break;
}
if skill_effect != -1 && instance_exists(skill_effect){
	with(skill_effect){instance_destroy();}
}
level_refresh();
orbit_refresh();
skill = -1;
if skill_casttype[skillselect] = cast_type.AutoWhenAttack{
	_s = shoot_cd;
}