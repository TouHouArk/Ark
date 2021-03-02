if !ed{
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_healthbar(40,5,560,30,hp/maxhp*100,c_black,c_red,c_red,180,true,true);
}