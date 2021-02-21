/// @desc rBattle Step
if cloud_cd != -1{
	if _c1 <= 0{
		instance_create_depth(150+irandom_range(-80,-20),-100,-20,objCloud);
		_c1 = cloud_cd+irandom_range(-5,5);
	}else{
		_c1 -= 1;
	}
	if _c2 <= 0{
		instance_create_depth(150+irandom_range(20,80),-100,-20,objCloud);
		_c2 = cloud_cd+irandom_range(-5,5);
	}else{
		_c2 -= 1;
	}
}

if fade > 0{
	fade -= 1;
	if fade = 0{
		instance_create_depth(0,0,0,objEnemyWaves);
		global.froze = false;
		switch(global.difficulty){
			case 0 : item_add(178);break;
			case 2 : 
				item_add(choose(179,180,181,182));
				with(objPlayer){
					var sk = irandom(5)/*irandom(23)*/;
					sk += floor((sk+1)/3)*3;
					get_skill(irandom(2),sk);
				}
			break;
			case 3 : 
				item_add(choose(179,180,181,182));
				item_add(choose(179,180,181,182));
				objPlayer.orbit_num = 0;
				with(objPlayer){
					var cs1 = irandom(2);
					var cs2 = (cs1+choose(1,2)) mod 3;
					var sk1 = irandom(5)/*irandom(23)*/;
					sk1 += floor((sk1+1)/3)*3;
					var sk2 = 0;
					do{
						sk2 = irandom(5)/*irandom(23)*/;
						sk2 += floor((sk2+1)/3)*3;
					}until(sk1 != sk2)
					get_skill(cs1,sk1);
					get_skill(cs2,sk2);
					orbit_refresh();
				}
			break;
		}
	}
}else{
	score += 1;
	if bgm_play && global.bgm = -1 && !bgm_intro{
		global.bgm = bgm_airattack_intro;
		audio_play_sound(bgm_airattack_intro,0,false);
		bgm_intro = true;
	}else if bgm_play && bgm_intro && !audio_is_playing(global.bgm){
		global.bgm = bgm_airattack_loop;
		audio_play_sound(bgm_airattack_loop,0,true);
	}
}
if textfade > 0{
	textfade -= 1;
}