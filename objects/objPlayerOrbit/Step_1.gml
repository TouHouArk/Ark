if keyboard_check(vk_shift) && _d < 1{
	_d += 0.1;
}else if !keyboard_check(vk_shift) && _d > 0{
	_d -= 0.1;
}
tgdx = sdx*_d + dx*(1-_d);
tgdy = sdy*_d + dy*(1-_d);

if abs(adx - tgdx) > spd{
	adx += sign(tgdx - adx) * spd;
}else{
	adx = tgdx;
}
if abs(ady - tgdy) > spd{
	ady += sign(tgdy - ady) * spd;
}else{
	ady = tgdy;
}

if instance_exists(objPlayer){
	event_user(0);
}