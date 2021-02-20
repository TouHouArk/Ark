if room = rMenu{
	draw_set_color(c_black);
	draw_set_alpha(fade/60);
	draw_rectangle(0,0,600,400,false);
}
if room = rBattle{
	if fade != 0 || textfade != 0{
		draw_set_color(c_black);
		draw_set_alpha(fade/60);
		draw_rectangle(60,20,240,380,false);
	
		draw_set_color(c_white);
		draw_set_alpha(textfade > 120? clamp((360-textfade)/120,0,1) : textfade/120);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_set_font(fntENGs);
		draw_text(150,160,"OPERATION");
		draw_set_font(fntENG);
		draw_text(150,190,string(stateid[0]));
		draw_set_font(fntCHS);
		draw_text(150,225,string(statename[0]));
		draw_set_alpha(1);
	}
}
//event_user(1);