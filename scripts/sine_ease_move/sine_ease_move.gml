// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sine_ease_move(percent){
	return -(dcos(percent*180)-1)/2;
}
function sine_ease_in_move(percent){
	return 1-dcos(percent*90);
}
function sine_ease_out_move(percent){
	return dsin(percent*90);
}