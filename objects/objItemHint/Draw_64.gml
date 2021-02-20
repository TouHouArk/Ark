if hint_a > 0{
	//if hint_a <= 30{
		var draw_x = 60;
		var draw_y = 710;
		draw_set_alpha(0.5);
		var size = min(hint_a/20,1,(show_time-hint_a)/20);
		draw_set_color(c_black);
		draw_rectangle(draw_x,draw_y+40-size*40,draw_x+480,draw_y+40+size*40,false);
		var alp = min(hint_a/30,1,(show_time-hint_a)/30);
		draw_set_alpha(alp);
		draw_set_color(c_white);
		draw_sprite_ext(sprItem,item_id,draw_x,draw_y-20,0.5,0.5,0,c_white,alp);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		draw_set_font(fntText);
		draw_text_special(draw_x+85,draw_y-15,"<rare"+string(rare mod 3)+">"+name);
		draw_text_special(draw_x+80,draw_y+45,"<outline>"+desc,fa_left,fa_middle,fntText,360,hint_a);
		draw_set_alpha(1);
	//}
}