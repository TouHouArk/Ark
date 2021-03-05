if target != -1 && instance_exists(target){
	x = target.x;
	y = target.y;
}
if _a mod 15 = 0 && !(ox = x && oy = y){
	var _i = instance_create_depth(ox,oy,90,objEShadowAlpha);
	_i.sprite_index = sprEEnemySlow;
	_i.image_angle = point_direction(ox,oy,x,y)+90;
	_i.image_alpha = 0.6;
	_i.spd = 0.01;
	_i.image_speed = 0;
}
_a += 1;