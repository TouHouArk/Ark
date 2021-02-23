if !ed{
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_healthbar(40,5,560,30,hp/maxhp*100,c_black,c_white,c_white,180,true,true);
	draw_healthbar(40,5,560,30,min(hp/maxhp,0.5+0.5*last_spell)*100,c_white,c_red,c_red,180,false,true);
}