draw_set_color(c_black);
draw_rectangle(left,top/2-20,right,top/2+20,false);
draw_rectangle(left,top,right,bottom,false);
draw_set_color(c_white);
draw_rectangle(left,top/2-20,right,top/2+20,true);
draw_rectangle(left,top,right,bottom,true);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(600,top/2,"选择任意一个技能")
for(var i = 0;i <= skill_max - skill_min;i++){
	var tx = left+ow*((i mod i_row)+0.5);
	var ty = top+oh*(floor(i/i_row)+0.5);
	draw_sprite_ext(sprSkill,skill_min+i,tx,ty,0.6,0.6,0,c_white,1);
	draw_text_transformed(tx,ty+45,global.skill_name[skill_min+i],0.8,0.8,0);
}
draw_set_color(c_white);