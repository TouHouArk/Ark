if global.focus != -1 && global.focus != id{
	with(global.focus){event_user(2);}
}
global.focus = id;
focus = true;
keyboard_string = "";