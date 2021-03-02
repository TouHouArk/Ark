switch(action){
	case 0: //普通攻击
		if keyboard_check(vk_space) && _s <= 0 && !global.froze{
			for(var i = 0;i < shoot_bullet;i++){
				var da = 0.5;
				if shoot_bullet > 1{
					da = i/(shoot_bullet-1);
				}
				var _i = instance_create_depth(x,y,global.bullet_depth,objPlayerBullet);
				_i.sprite_index = sprBDrone2;
				_i.direction = now_angle + (da-0.5)*60;
				_i.speed = 4;
				_i.image_angle = _i.direction-90;
				_i.dmg = atk;
				_i.dmgtype = damage_type.Art;
			}
			_s = shoot_cd;
		}
	break;
	case 1: //追踪
		if follow != -1 && instance_exists(follow){
			_a += 1;
			now_x = home_x + (follow_x - home_x)*_a/30;
			now_y = home_y + (follow_y - home_y)*_a/30;
			if _a >= 30{
				now_x = follow_x;
				now_y = follow_y;
				action = 2;
				_a = 0;
			}
		}else{
			event_user(1);
		}
	break;
	case 2:
		now_x = follow_x;
		now_y = follow_y;
		round_ang = (round_ang + dspd + 360) mod 360;
		if skilling && instance_exists(follow){
			if _s = 0{
				dmg = atk*(0.2+combo*0.15)*shoot_bullet;
				if instance_exists(objPlayer){
					daze_addon = choose(60*objPlayer.shoot_bullet,0);
				}else{
					daze_addon = choose(60,0);
				}
				with(follow){enemy_get_attacked(other.id)}
				_s = shoot_cd;
				skill_bullet_alp = 1;
				combo = min(6,combo + 1)
			}
		}else{
			event_user(1);
		}
	break;
}
if _s > 0{
	_s -= 1;
}
if skill_bullet_alp > 0{
	skill_bullet_alp = max(0,skill_bullet_alp-0.1);
}