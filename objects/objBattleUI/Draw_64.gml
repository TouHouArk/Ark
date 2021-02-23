/// @desc showgui
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0,0,600,global.border_up*2+1,false);
draw_rectangle(0,global.border_down*2-1,600,800,false);
draw_sprite_ext(sprUIBorderV,0,0,global.border_up*2,1,1,0,c_white,1);
draw_sprite_ext(sprUIBorderV,0,0,global.border_down*2,1,-1,0,c_white,1);
draw_rectangle(0,0,global.border_left*2,800,false);
draw_rectangle(global.border_right*2-1,0,600,800,false);
draw_sprite_ext(sprUIBorderH,0,global.border_left*2,0,1,1,0,c_white,1);
draw_sprite_ext(sprUIBorderH,0,global.border_right*2,0,-1,1,0,c_white,1);
draw_set_color(c_white);

if global.showgui{
	draw_sprite(sprUIBackground,0,600,0);
	draw_set_font(fntText);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	//基础数据显示
	draw_sprite(sprUIEnemyKilled,0,432,63);
	draw_sprite(sprUIMoney,0,697,60);
	draw_sprite(sprUILifepoint,0,670,103);
	draw_sprite(sprUIScore,0,707,151);
	draw_set_color(c_black);
	draw_text_special(550,88,"<shadow>"+string(global.enemy_killed),fa_center,fa_middle);
	draw_text_special(780,82,"<shadow>"+string(global.money),fa_center,fa_middle);
	draw_text_special(815,128,"<shadow>"+string(objPlayer.lifepoint) + ((objPlayer.semi_lifepoint > 0)? " | <semi>" + string(objPlayer.semi_lifepoint) : ""),fa_center,fa_middle);
	draw_set_color(c_white);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	draw_text(940,175,string_replace_all(string_format(score,20,0)," ","0"));
	
	//经验条
	draw_sprite(sprUIEXPBar,0,477,112);
	draw_set_color(make_color_rgb(0,170,255));
	draw_rectangle(488,118,488+180*objPlayer.xp/objPlayer.xpneed,143,false);
	draw_set_color(c_white);
	draw_sprite(sprUIEXPBar,2,477+180*objPlayer.xp/objPlayer.xpneed,112);
	draw_sprite(sprUIEXPBar,1,477,112);
	draw_sprite(sprUILV,0,658,149);
	draw_sprite(sprUINumber,real(string_char_at(string(objPlayer.level),1)),671,157);
	if objPlayer.level >= 10{
		draw_sprite(sprUINumber,objPlayer.level mod 10,681,157);
	}
	
	//PRTS标
	draw_sprite(sprUIPRTS,0,625,58);
	
	//技能说明
	draw_sprite(sprUISkillInfo,0,662,416);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_text_special(690,474,global.skill_desc[objPlayer.skill_id[objPlayer.skillselect]],fa_left,fa_middle,fntText,330);
	draw_set_color(c_white);
	
	//技能
	draw_sprite(sprSkill,objPlayer.skill_id[objPlayer.skillselect],1029,387);
	draw_set_alpha(0.5);
	if objPlayer.skill = -1 && objPlayer.skill_spneed[objPlayer.skillselect] > 0{
		draw_set_color(c_black)
		if objPlayer.skill_sp[objPlayer.skillselect] < objPlayer.skill_spneed[objPlayer.skillselect]{
			draw_rectangle(1029,387,1156,514-127*clamp(objPlayer.skill_sp[objPlayer.skillselect]/objPlayer.skill_spneed[objPlayer.skillselect],0,1),false);
		}
	}else if objPlayer.skill_duration[objPlayer.skillselect] > 0{
		draw_set_color(c_orange)
		draw_rectangle(1029,387+127*clamp((1-objPlayer.skill_time/room_speed*2/objPlayer.skill_duration[objPlayer.skillselect]),0,1),1156,514,false);
	}else if objPlayer.skill_duration[objPlayer.skillselect] = -1{
		draw_set_color(c_orange)
		draw_rectangle(1029,387,1156,514,false);
	}
	if objPlayer.skill_charged[objPlayer.skillselect] >= 1{
		var _charge = objPlayer.skill_charged[objPlayer.skillselect]+(objPlayer.skill_sp[objPlayer.skillselect] == objPlayer.skill_spneed[objPlayer.skillselect])
		draw_sprite_ext(sprSkillChargeCircle,0,1157,387,0.5,0.5,_a/2,c_white,1);
		draw_sprite_ext(sprSkillCharge,_charge,1157,387,1,1,0,c_white,1);
	}
	draw_set_alpha(1);
	draw_sprite(sprUISkillBoard,0,1013,517);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text_special(1093,538,"<outline>"+global.skill_name[objPlayer.skill_id[objPlayer.skillselect]],fa_center,fa_middle);
	

	//血条
	draw_sprite(sprUIHPBar,0,508,497);
	draw_set_color(make_color_rgb(105,179,214));
	draw_rectangle(519,503,519+220*objPlayer.hp/objPlayer.maxhp,528,false);
	draw_set_color(c_white);
	draw_sprite(sprUIHPBar,1,508,497);
	
	//收藏品
	var _l = ds_list_size(global.items_carry);
	if _l > 10{
		for(var i = 0;i < _l;i++){
			draw_sprite_ext(sprItem,ds_list_find_value(global.items_carry,i),570+(floor(i mod (_l/2)))*(min(1060/_l,120)),600+80*floor(i*2/_l),0.5,0.5,0,c_white,1);
		}
	}else{
		for(var i = 0;i < _l;i++){
			draw_sprite_ext(sprItem,ds_list_find_value(global.items_carry,i),570+i*(min(530/_l,120)),620,0.5,0.5,0,c_white,1);
		}
	}
}

draw_set_color(c_white);