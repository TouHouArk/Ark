/// @desc attack
var bullets = shoot_bullet-1;
var slowdown = keyboard_check(vk_shift);
switch(skill){
	//普通攻击
	default:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x+(-bullets*0.5+i)*min(10-slowdown*5,(50-slowdown*25)/bullets),y-10+abs(i-bullets/2)*5,global.bullet_depth,objPlayerBullet);
			_i.sprite_index = sprBAmiya1;
			_i.vspeed = -5;
			_i.dmg = atk;
			if skill != -1{
				_i.dmg *= skill_dmgscale;
			}
			_i.dmgtype = dmgtype;
			_i.sound = p_imp_amiyamag_n;
		}
		audio_play_sound(p_atk_amiyamag_n,1,false);
	break;
	
	//精神爆发
	case 2 :
		for(var i = 0;i < shoot_bullet*3;i++){
			var _i = instance_create_depth(x,y-10,global.bullet_depth,objPlayerBullet);
			_i.sprite_index = sprBAmiya2;
			_i.speed = 2.8+irandom(4)/10;
			_i.direction = irandom_range(30,150);
			_i.image_angle = _i.direction - 90;
			_i.dmg = round(atk*1.6)*skill_dmgscale;
			_i.dmgtype = dmgtype;
			_i.sound = p_imp_amiyamag_n;
		}
	break;
	//奇美拉
	case 3:
		var _i = instance_create_depth(x,y-10,global.bullet_depth,objPlayerBullet);
		_i.sprite_index = sprBAmiya2;
		_i.vspeed = -3;
		_i.gravity = 0.1;
		_i.gravity_direction = 90;
		_i.dmg = atk*shoot_bullet*skill_dmgscale;
		_i.dmgtype = damage_type.Real;
		_i.sound = p_imp_amiyamag_h;
	break;
	
	//高效冲击
	case 7:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x+(-bullets*0.5+i)*(10-slowdown*5),y-10+abs(i-bullets/2)*8,global.bullet_depth,objPlayerBullet);
			_i.sprite_index = sprBBagpipe;
			_i.vspeed = -7;
			_i.dmg = atk*2*skill_dmgscale;
			_i.dmgtype = dmgtype;
		}
		if shoot_combo = 0{
			shoot_combo = 1;
			var _i = instance_create_depth(x,y,depth+1,objAnimeBuff);
			_i.sprite_index = sprESteam;
		}
		audio_play_sound(p_imp_gunlance_h,1,false);
	break;
	//剑雨
	case 8:
		var _i = instance_create_depth(x,y,global.bullet_depth,objBTexas1);
		_i.dmg = atk*1.7*skill_dmgscale;
		_i.dmgtype = damage_type.Art;
		_i.daze_addon = 3*room_speed/2;
	break;
	//怒目
	case 9:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x,y-10,global.bullet_depth,objPlayerBulletP);
			_i.sprite_index = sprBSaga;
			_i.speed = 7.5;
			_i.direction = 90-45+i/bullets*90
			_i.image_angle = _i.direction-90;
			_i.friction = 0.1;
			_i.lifetime = 90;
			_i.dmg = atk*skill_dmgscale;
			_i.dmgtype = dmgtype;
		}
	break;
	//红移
	case 11:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x+(-0.5+i/bullets)*6,y-10,global.bullet_depth,objPlayerBullet);
			_i.sprite_index = sprBCutter;
			_i.speed = 6;
			_i.direction = 90;
			if global.fun && instance_exists(parEnemy){
				var target = instance_nearest(_i.x,_i.y,parEnemy);
				_i.direction = point_direction(_i.x,_i.y,target.x,target.y);
				_i.friction = 1;
			}
			_i.image_angle = _i.direction-90;
			_i.dmg = atk*3.4*skill_dmgscale;
			_i.dmgtype = damage_type.Physic;
		}
		_s = 0.5*room_speed/2;
	break;
	//狼魂
	case 12:
		var enemy_list = ds_list_create();
		instance_find_list(x,y,parEnemy,enemy_list);
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x,y-10,global.bullet_depth,objPlayerMissle);
			_i.sprite_index = sprBLappland;
			_i.direction = 90-bullets*5+i*10;
			_i.speed = 4;
			_i.dmg = atk*skill_dmgscale;
			_i.dmgtype = damage_type.Art;
			_i.auto_found = true;
			_i.dspd = 8;
			if i < ds_list_size(enemy_list)-1{
				_i.auto_target = ds_list_find_value(enemy_list,i);
			}else{
				_i.auto_target = -1;
			}
			_i.auto_angle = true;
			_i.shadow = objEShadowScale;
			_i.mute_addon = 6*room_speed/2;
			_i.boom = false;
			_i.image_blend = make_color_hsv(0,0,55+(1-i/bullets)*200)
			//audio_play_sound(p_atk_silver_n,1,false);
		}
		ds_list_destroy(enemy_list)
	break;
	//真银斩
	case 15:
		var _i = instance_create_depth(x,y-10,global.bullet_depth,objBPlayerRangeSkill);
		_i.sprite_index = sprBSliverash;
		_i.dmg = atk*skill_dmgscale;
		_i.dmgtype = damage_type.Physic;
		_i._t = 10;
		_i._t2 = 30;
		_i.scale1_from = 0.1;
		_i.scale2_from = 0;
		_i.scale1_mid = 1;
		_i.scale2_mid = 1;
		_i.scale1_to = 1.2;
		_i.scale2_to = 1.1;
		audio_play_sound(p_atk_silver_n,1,false);
	break;
	//磁爆锤
	case 18:
		var _i = instance_create_depth(x,y-10,global.bullet_depth,objBPlayerRangeSkill);
		_i.sprite_index = sprBCroissant;
		_i.dmg = atk*20*skill_dmgscale;
		_i.dmgtype = damage_type.Physic;
		_i._t = 5;
		_i._t2 = 30;
		_i.outter_index = 0;
		_i.inner_index = 1;
		_i.fade_index = 2;
		_i.scale1_from = 0.3;
		_i.scale2_from = 0;
		_i.scale1_mid = 1;
		_i.scale2_mid = 0.7;
		_i.scale1_to = 1.1;
		_i.scale2_to = 2;
		_i.daze_addon = 4*room_speed/2;
		//audio_play_sound(p_skill_robotexplo,1,false);
	break;
	//反击电弧
	case 19:
		var _i = instance_create_depth(x,y-10,global.bullet_depth,objBLiskarm);
		_i.dmg = atk*skill_dmgscale;
		_i.dmgtype = damage_type.Art;
		if get_chance() <= 25*global.luck_rate{
			_i.daze_addon = shoot_bullet*room_speed/2;
		}
	break;
	//凝武
	case 23:
		var _i = instance_create_depth(x,y-10,global.bullet_depth,objPlayerBulletS);
		_i.sprite_index = sprBShiraYuki;
		_i.vspeed = -5;
		_i.friction_meet = 0.1;
		_i.image_xscale = 0.5;
		_i.image_yscale = 0.5;
		_i.aspd = 20;
		_i.dmg = atk*skill_dmgscale/(room_speed/2);
		_i.dmgtype = damage_type.Art;
		_i.slow_addon = room_speed/2;
		_i.alarm[0] = 80*shoot_bullet/4;
		audio_play_sound(p_atk_throw_n,1,false);
	break;
	//毒液散射
	case 24:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x+(-bullets*0.5+i)*min(6-slowdown*3,(50-slowdown*25)/bullets),y-10,global.bullet_depth,objPlayerBullet);
			_i.sprite_index = sprBBluePoison;
			_i.speed = 5-abs(i-bullets/2)*min(0.5,3/bullets);
			_i.direction = 90-sqr((i/bullets*2-1))*sign(i-bullets/2)*10;
			_i.image_angle = _i.direction-90;
			_i.dmg = atk*skill_dmgscale;
			_i.dmgtype = dmgtype;
			_i.sound = p_imp_arrow_n;
		}
		audio_play_sound(p_atk_arrow_n,1,false);
	break;
	//过载模式
	case 25:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x+(-bullets*0.5+i)*min(10-slowdown*5,(50-slowdown*25)/bullets),y-10+abs(i-bullets/2)*5,global.bullet_depth,objPlayerBullet);
			_i.sprite_index = sprBExusiai;
			_i.vspeed = -8;
			_i.dmg = atk*1.5*skill_dmgscale;
			_i.dmgtype = dmgtype;
			_i.sound = p_imp_amiyamag_n;
		}
		if shoot_combo = 0{
			shoot_combo = 4;
			audio_play_sound(p_atk_smg_h,1,false);
		}
	break;
	//D12
	case 26:
		var _i = instance_create_depth(x,y,depth+1,objEW);
		_i.dmg = atk*3.1*skill_dmgscale;
		_i.dmgtype = dmgtype;
		_i.daze_addon = 5*room_speed/2;
	break;
	//战术的终结
	case 27:
		var _i = instance_create_depth(x,y-10,global.bullet_depth,objPlayerBullet);
		_i.sprite_index = sprBSchwarz;
		_i.vspeed = -5;
		_i.dmg = atk*shoot_bullet*skill_dmgscale;
		_i.dmgtype = damage_type.Physic;
		_i.sound = p_imp_militaryxbow_s;
		
		_i = instance_create_depth(x,y,depth+1,objAnimeBuff);
		_i.sprite_index = sprESteam;
		audio_play_sound(p_atk_militaryxbow_s,1,false);
	break;
	//嘉维尔保护方案
	case 29:
		if instance_exists(objBTomimi){
			with(objBTomimi){
				atking = true;
				dmgtype = other.dmgtype;
				time = other.shoot_cd;
				dmg = other.atk*other.shoot_bullet;
				daze_addon = 0;
				if choose(0,1){
					daze_addon = other.shoot_bullet*room_speed/2;
				}else{
					dmg *= 2;
				}
			}
			audio_play_sound(p_atk_magwheel_h,1,false);
		}else{
			_s = 0;
		}
	break;
	//荒时之锁
	case 30:
		var _i = instance_create_depth(x,y,depth+1,objBMostima);
		_i.dmg = atk*2*skill_dmgscale;
	break;
	//炎爆
	case 31:
		var _i = instance_create_depth(x,y,depth+1,objBIfrit);
		_i.dmg = atk*2.5*skill_dmgscale;
		_i.dmgtype = dmgtype;
	break;
	//很热的刀
	case 32:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x+(-bullets*0.5+i)*min(6-slowdown*3,(48-slowdown*24)/bullets),y-6+abs(i-bullets/2)*3,global.bullet_depth,objBCeobe);
			_i.vspeed = -10;
			_i.dmg = atk*skill_dmgscale;
			_i.dmgtype = dmgtype;
		}
		audio_play_sound(p_atk_firedagger_s,1,false);
	break;
	//火山
	case 33:
		for(var i = 0;i < shoot_bullet*6;i++){
			var _i = instance_create_depth(x,y,global.bullet_depth,objPlayerBullet);
			_i.sprite_index = sprBEyja;
			_i.speed = 3;
			_i.direction = 90+(skill_duration[skillselect] - skill_time)/shoot_cd*10+i/bullets*60;
			_i.image_angle = _i.direction;
			_i.dmg = atk*skill_dmgscale;
			_i.dmgtype = dmgtype;
			_i.sound = p_imp_firemag_n;
		}
	break;
	//孢子扩散
	case 34:
		var _i = instance_create_depth(x,y-10,global.bullet_depth,objBPodenco);
		_i.vspeed = -6;
		_i.friction = 0.1;
		_i.alarm[0] = 120;
		_i.dmg = atk*0.8*skill_dmgscale;
		_i.dmgtype = dmgtype;
	break;
	//爆破回收
	case 35:
		with(objPlayerOrbit){
			var _i = instance_create_depth(x,y,depth,objPlayerMissle);
			_i.sprite_index = sprite_index;
			_i.image_index = image_index;
			_i.speed = 10;
			_i.direction = 90;
			_i.range = 75;
			_i.dmg = other.atk*6*other.skill_dmgscale;
			_i.dmgtype = damage_type.Art;
			_i.daze_addon = 2*room_speed/2;
			_i.dspd = 20;
			_i.auto_found = true;
			ed = true;
			instance_destroy();
		}
		audio_play_sound(p_skill_robotexplo,1,false);
		orbit_num_now = 0;
	break;
	//反制电磁脉冲
	case 37:
		var _i = instance_create_depth(x,y,global.bullet_depth,objBPlayerRangeSkill);
		_i.sprite_index = sprBGlaucas;
		_i.dmg = atk*8*skill_dmgscale;
		_i.dmgtype = damage_type.Art;
		_i.stun_addon = 6*room_speed/2;
		_i._t = 5;
		_i._t2 = 50;
		_i.scale2_to = 2;
		_i.fade_index = 2;
		_i.scale1_from = 0.2;
		_i.scale2_from = 0;
		_i.scale1_mid = 1;
		_i.scale2_mid = 0.8;
		_i.scale1_to = 1.1;
		_i.scale2_to = 2;
		_i.image_angle = irandom(3)*90;
		//audio_play_sound(p_atk_silver_n,1,false);
	break;
	//秘杖·反重力模式
	case 39:
		var enemy_list = ds_list_create();
		instance_find_list(x,y,parEnemy,enemy_list);
		var sd = 90;
		if instance_exists(objEAngelina){
			sd = 90+objEAngelina.ang;
		}
		var sx = x+lengthdir_x(50,sd);
		var sy = y+lengthdir_y(50,sd);
		for(var i = 0;i < min(shoot_bullet*5,ds_list_size(enemy_list));i++){
			var _i = instance_create_depth(sx,sy,global.bullet_depth,objPlayerBullet);
			_i.sprite_index = sprBAngelina;
			_i.speed = 5;
			_i.direction = point_direction(sx,sy,enemy_list[| i].x,enemy_list[| i].y);
			_i.image_angle = _i.direction - 90;
			_i.dmg = atk*skill_dmgscale;
			_i.ctrl_addon = 3*room_speed/2;
			_i.dmgtype = dmgtype;
			_i.sound = p_imp_aglinamag_f;
		}
		audio_play_sound(p_atk_aglinamag_n,1,false);
		ds_list_destroy(enemy_list);
	break;
}