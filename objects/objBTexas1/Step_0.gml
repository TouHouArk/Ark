_a += 1;
if _a <= _t{
	alp1 = _a/_t;
	alp2 = _a/_t;
}
if _a > _t && _a <= _t+_t2{
	alp1 = 0.9+dcos((_a-_t)*3)*0.1;
	alp2 = 1-(_a-_t)/_t2*0.1;
}
if _a <= _t+_t2{
	alp3 = _a/(_t+_t2);
}
if _a > _t+_t2 && _a <= _t+_t2+_t3{
	alp1 = (_t+_t2+_t3-_a)/_t3;
	alp2 = (_t+_t2+_t3-_a)/_t3*0.9;
	alp3 = (_t+_t2+_t3-_a)/_t3;
}
if _a > _t && _a <= _t+_t2+_t3{
	i_scale = scale*(0.2+dsin((_a-_t)/(_t2+_t3)*90)*0.8);
}
if _a = 150{
	instance_destroy();
}/*else{
	x = objPlayer.x;
	y = objPlayer.y;
}*/