// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function angle_percent(src,dest,percent){
	return src+angle_difference(src,dest)*clamp(percent,0,1);
}