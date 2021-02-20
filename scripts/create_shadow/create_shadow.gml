// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_shadow(type){
	var _i = 0;
	switch(type){
		case 0 : _i = instance_create_depth(x,y,depth+1,objEShadowAlpha);break;
		case 1 : _i = instance_create_depth(x,y,depth+1,objEShadowScale);break;
	}
	_i.sprite_index = sprite_index;
	_i.image_index = image_index;
	_i.image_xscale = image_xscale;
	_i.image_yscale = image_yscale;
	_i.image_angle = image_angle;
	return _i;
}