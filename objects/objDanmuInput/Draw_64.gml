draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_alpha(1);
draw_sprite_ext(sprite_index,focus,x*2,y*2,2,2,0,c_white,0.3);
draw_set_alpha(0.3);
draw_set_color(col1);
draw_text(x*2-1,y*2-15,text);
draw_text(x*2,y*2-15,text);
draw_text(x*2+1,y*2-15,text);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text_transformed(x*2,y*2+10,focus? keyboard_string : string(num),2,2,0);