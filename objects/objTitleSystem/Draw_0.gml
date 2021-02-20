draw_set_alpha(1);
var idx = dsin(mouse_dpx*90)
var idy = dsin(mouse_dpy*90)
idx = idx*58;
idy = idy*50;
draw_sprite_ext(sprTitleImage,0,-58+idx,-50+idy,0.5,0.5,0,c_white,1);
	
draw_set_color(c_white);
draw_set_font(fntText);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
/*draw_set_alpha((dsin(textfade*3)+1)/2);
	draw_text_special(300,200,"<outline>按任意键开始<br>其实是因为我没做好开始画面",fa_center,fa_middle)