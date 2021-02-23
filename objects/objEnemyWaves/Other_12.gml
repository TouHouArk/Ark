///@desc S1 W3
if _a = 0{
	objSystem.cloud_cd = -1;
}
if _a = 240{
	instance_create_depth(150,-20,50,objW);
}
if _a >= 300 && _a <= 320{
	global.border_left = 60-(_a-300)*2;
	global.border_right = 300-60+(_a-300)*2;
}
if _a > 480 && instance_exists(objW){
	_a = 480;
}
if _a >= 840 && !instance_exists(objW){
	audio_stop_all();
	audio_play_sound(v_bat_f_04,2,false);
	show_message("游戏通关啦！\n我还没做下一关所以已经到底了\n得分:"+string(score));
	game_restart();
}