// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function in_room(x,y){
	return x >= 0 && x <= room_width && y >= 0 && y <= room_height;
}