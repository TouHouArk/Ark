/// @desc showgui
draw_set_alpha(1);
draw_set_color(c_black);
var view_x = view_get_xport(view_camera[0]);
draw_rectangle(0,0,600,global.border_up*2+1,false);
draw_rectangle(0,global.border_down*2-1,1200,800,false);
draw_sprite_ext(sprUIBorderV,0,view_x,global.border_up*2,1,1,0,c_white,1);
draw_sprite_ext(sprUIBorderV,0,view_x,global.border_down*2,1,-1,0,c_white,1);
draw_rectangle(0,0,view_x+global.border_left*2,800,false);
draw_rectangle(view_x+global.border_right*2-1,0,1200,800,false);
draw_sprite_ext(sprUIBorderH,0,view_x+global.border_left*2,0,1,1,0,c_white,1);
draw_sprite_ext(sprUIBorderH,0,view_x+global.border_right*2,0,-1,1,0,c_white,1);
draw_set_color(c_white);

if global.showgui{
	draw_sprite(sprUIBackground,0,view_x+600,0);
	draw_set_font(fntText);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	//基础数据显示
	draw_sprite(sprUIEnemyKilled,0,prts_x-246,prts_y-48);
	draw_sprite(sprUIMoney,0,prts_x+19,prts_y-51);
	draw_sprite(sprUILifepoint,0,prts_x-8,prts_y-8);
	draw_sprite(sprUIScore,0,prts_x-226,prts_y-99);
	draw_set_color(c_black);
	draw_text_special(prts_x-128,prts_y-23,"<shadow>"+string(global.enemy_killed),fa_center,fa_middle);
	draw_text_special(prts_x+102,prts_y-29,"<shadow>"+string(global.money),fa_center,fa_middle);
	draw_text_special(prts_x+137,prts_y+17,"<shadow>"+string(objPlayer.lifepoint) + ((objPlayer.semi_lifepoint > 0)? " | <semi>" + string(objPlayer.semi_lifepoint) : ""),fa_center,fa_middle);
	draw_set_color(c_white);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	draw_text(prts_x+7,prts_y-74,string_replace_all(string_format(score,20,0)," ","0"));
	
	//经验条
	draw_sprite(sprUIEXPBar,0,prts_x-201,prts_y+1);
	draw_set_color(make_color_rgb(0,170,255));
	draw_rectangle(prts_x-190,prts_y+6,prts_x-190+180*objPlayer.xp/objPlayer.xpneed,prts_y+33,false);
	draw_set_color(c_white);
	draw_sprite(sprUIEXPBar,2,prts_x-201+180*objPlayer.xp/objPlayer.xpneed,prts_y+1);
	draw_sprite(sprUIEXPBar,1,prts_x-201,prts_y+1);
	draw_sprite(sprUILV,0,prts_x-20,prts_y+38);
	draw_sprite(sprUINumber,real(string_char_at(string(objPlayer.level),1)),prts_x-7,prts_y+46);
	if objPlayer.level >= 10{
		draw_sprite(sprUINumber,objPlayer.level mod 10,prts_x+3,prts_y+146);
	}
	
	//血条
	draw_sprite(sprUIHPBar,0,prts_x+19,prts_y+53);
	draw_set_color(make_color_rgb(105,179,214));
	draw_rectangle(prts_x+30,prts_y+59,prts_x+30+220*objPlayer.hp/objPlayer.maxhp,prts_y+84,false);
	draw_set_color(c_white);
	draw_sprite(sprUIHPBar,1,prts_x+19,prts_y+53);
	
	//PRTS标
	draw_sprite(sprUIPRTS,0,prts_x,prts_y);
	
	//备用技能
	draw_set_alpha(0.5);
	for(var i = objPlayer.skill_num - 1;i > 0;i--){
		draw_sprite(sprSkill,objPlayer.skill_id[(objPlayer.skillselect+i) mod objPlayer.skill_num],skill_x-i*20,skill_y-i*20);
	}
	draw_set_alpha(1);
	
	//技能说明
	draw_sprite(sprUISkillInfo,global.phonegui,skill_x-531+global.phonegui*200,skill_y-35+global.phonegui*80);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_text_special(skill_x-403+global.phonegui*200,skill_y+23+global.phonegui*80,global.skill_desc[objPlayer.skill_id[objPlayer.skillselect]],fa_left,fa_middle,fntText,330);
	draw_set_color(c_white);
	
	//技能
	draw_sprite(sprSkill,objPlayer.skill_id[objPlayer.skillselect],skill_x,skill_y);
	draw_set_alpha(0.5);
	if objPlayer.skill = -1 && objPlayer.skill_spneed[objPlayer.skillselect] > 0{
		draw_set_color(c_black)
		if objPlayer.skill_sp[objPlayer.skillselect] < objPlayer.skill_spneed[objPlayer.skillselect]{
			draw_rectangle(skill_x-64,skill_y-64,skill_x+63,skill_y+63-127*clamp(objPlayer.skill_sp[objPlayer.skillselect]/objPlayer.skill_spneed[objPlayer.skillselect],0,1),false);
		}
	}else if objPlayer.skill_duration[objPlayer.skillselect] > 0{
		draw_set_color(c_orange)
		draw_rectangle(skill_x-64,skill_y-64+127*clamp((1-objPlayer.skill_time/room_speed*2/objPlayer.skill_duration[objPlayer.skillselect]),0,1),skill_x+63,skill_y+63,false);
	}else if objPlayer.skill_duration[objPlayer.skillselect] = -1{
		draw_set_color(c_orange)
		draw_rectangle(skill_x-64,skill_y-64,skill_x+63,skill_y+63,false);
	}
	if objPlayer.skill_charged[objPlayer.skillselect] >= 1{
		var _charge = objPlayer.skill_charged[objPlayer.skillselect]+(objPlayer.skill_sp[objPlayer.skillselect] == objPlayer.skill_spneed[objPlayer.skillselect])
		draw_sprite_ext(sprSkillChargeCircle,0,skill_x+64,skill_y-64,0.5,0.5,_a/2,c_white,1);
		draw_sprite_ext(sprSkillCharge,_charge,skill_x+64,skill_y-64,1,1,0,c_white,1);
	}
	draw_set_alpha(1);
	draw_sprite(sprUISkillBoard,0,skill_x-80-global.phonegui*140,skill_y+66-global.phonegui*80);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text_special(skill_x-global.phonegui*140,skill_y+87-global.phonegui*80,"<outline>"+global.skill_name[objPlayer.skill_id[objPlayer.skillselect]],fa_center,fa_middle);
	
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