///@desc S1 W3
if _a = 60{
	instance_create_depth(150,-20,50,objW);
}
if _a > 120 && instance_exists(objW){
	_a = 120;
}
if _a >= 240 && !instance_exists(objW){
	audio_stop_all();
	audio_play_sound(v_bat_f_04,2,false);
	show_message("游戏通关啦！\n我还没做下一关所以已经到底了\n得分:"+string(score));
	game_restart();
}