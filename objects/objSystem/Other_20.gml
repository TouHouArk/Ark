/// @desc rMenu step
if keyboard_check_pressed(vk_space) && !st && fade <= 0{
	st = true
}

if !st && fade > 0{
	fade -= 1;
}

textfade += 1;

if st && fade = 60{
	room_goto(rBattle);
	instance_create_depth(x,y,depth,objBattleUI);
	fade = 120;
	textfade = 360;
}else if st && fade < 60{
	fade += 1;
}