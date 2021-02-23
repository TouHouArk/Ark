draw_selfv();
if !ed{
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_valign(fa_top);
	draw_set_valign(fa_left);
	draw_text_special(global.border_left,10,"<outline>萨卡兹雇佣兵 - W",fa_left,fa_top);
	for(var i = 0;i < maxspells;i++){
		draw_sprite(sprWRemain,(spell+oa_st) >= (maxspells-i),global.border_left+i*20,40);
	}
}