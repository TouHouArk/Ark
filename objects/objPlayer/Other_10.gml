/// @desc attack
switch(skill){
	//普通攻击
	default:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x+(-(shoot_bullet-1)*0.5+i)*(10-keyboard_check(vk_shift)*5),y-10+abs(i-(shoot_bullet-1)/2)*5,10,objPlayerBullet);
			_i.sprite_index = sprBAmiya1;
			_i.vspeed = -5;
			_i.dmg = atk;
			if skill = 0{
				_i.dmg *= skill_dmgscale;
			}
			_i.dmgtype = damage_type.Art;
			_i.sound = p_imp_amiyamag_n;
		}
	break;
	
	//精神爆发
	case 2 :
		for(var i = 0;i < shoot_bullet*3;i++){
			var _i = instance_create_depth(x,y-10,10,objPlayerBullet);
			_i.sprite_index = sprBAmiya2;
			_i.speed = 2.8+irandom(4)/10;
			_i.direction = irandom_range(30,150);
			_i.image_angle = _i.direction - 90;
			_i.dmg = round(atk*1.6)*skill_dmgscale;
			_i.dmgtype = damage_type.Art;
			_i.sound = p_imp_amiyamag_n;
		}
	break;
	//奇美拉
	case 3:
		var _i = instance_create_depth(x,y-10,10,objPlayerBullet);
		_i.sprite_index = sprBAmiya2;
		_i.vspeed = -3;
		_i.gravity = 0.1;
		_i.gravity_direction = 90;
		_i.dmg = atk*shoot_bullet*skill_dmgscale;
		_i.dmgtype = damage_type.Real;
		_i.sound = p_imp_amiyamag_h;
	break;
	
	//怒目
	case 9:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x,y-10,10,objPlayerBulletP);
			_i.sprite_index = sprBSaga;
			_i.speed = 7.5;
			_i.direction = 90-45+i/(shoot_bullet-1)*90
			_i.image_angle = _i.direction-90;
			_i.friction = 0.1;
			_i.lifetime = 90;
			_i.dmg = atk*skill_dmgscale;
			_i.dmgtype = damage_type.Physic;
		}
	break;
	//红移
	case 11:
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x+(-0.5+i/(shoot_bullet-1))*6,y-10,10,objPlayerBullet);
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
	break;
	//狼魂
	case 12:
		var enemy_list = ds_list_create();
		instance_find_list(x,y,parEnemy,enemy_list);
		for(var i = 0;i < shoot_bullet;i++){
			var _i = instance_create_depth(x,y-10,10,objPlayerMissle);
			_i.sprite_index = sprBLappland;
			_i.direction = 90-(shoot_bullet-1)*5+i*10;
			_i.speed = 4;
			_i.dmg = atk*skill_dmgscale;
			_i.dmgtype = damage_type.Art;
			_i.auto_found = true;
			_i.dspd = 8;
			if i < ds_list_size(enemy_list)-1{
				_i.auto_target = ds_list_find_value(enemy_list,i);
			}else{
				_i.auto_target = -1
			}
			_i.auto_angle = true;
			_i.shadow = objEShadowScale;
			_i.boom = false;
			_i.image_blend = make_color_hsv(0,0,55+(1-i/(shoot_bullet-1))*200)
			//audio_play_sound(p_atk_silver_n,1,false);
		}
		ds_list_destroy(enemy_list)
	break;
	//真银斩
	case 15:
		var _i = instance_create_depth(x,y-10,10,objBPlayerRangeSkill);
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
	//反制电磁脉冲
	case 37:
		var _i = instance_create_depth(x,y,-10,objBPlayerRangeSkill);
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
		_i.hit_effect = objEEnemyStun;
		//audio_play_sound(p_atk_silver_n,1,false);
	break;
}