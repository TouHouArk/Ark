event_inherited();
image_angle = image_angle mod 360;
_a = (_a+1) mod 42;
aspd = aspd_o*(1+dsin(_a/42*180));
if target != -1 && instance_exists(target){
	x = target.x+dx;
	y = target.y+dy;
}