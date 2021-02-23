if !st{
	draw_set_color(c_white);
	draw_set_alpha(1);
	for(var i = 0;i < 8;i++){
		for(var j = 0;j < 5;j++){
			var _d = ((dx2+i*40) mod 120)/120;
			draw_sprite_ext(sprOA,0,(-2+_d+j)*ldx1+i*ldx2,200+(-2+_d+j)*ldy1+i*ldy2,0.5,0.5,ang,c_white,image_alpha);
		}
	}

	draw_sprite_ext(sprite,0,dx1,dy1,0.5,0.5,0,c_white,image_alpha);
}

draw_set_valign(fa_bottom);
draw_set_halign(fa_right);
draw_set_color(c_black);
draw_text_transformed(dx3,dy3-1,text,ds3,ds3,0);
draw_text_transformed(dx3,dy3+1,text,ds3,ds3,0);
draw_text_transformed(dx3-1,dy3,text,ds3,ds3,0);
draw_text_transformed(dx3+1,dy3,text,ds3,ds3,0);
draw_set_color(c_white);
draw_text_transformed(dx3,dy3,text,ds3,ds3,0);