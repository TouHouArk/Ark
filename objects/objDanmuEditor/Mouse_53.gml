if global.focus != -1 && !position_meeting(mouse_x,mouse_y,objDanmuInput){
	with(global.focus){event_user(2);}
	global.focus = -1;
}