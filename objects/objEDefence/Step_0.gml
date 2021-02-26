_a += spd;
if _a <= _t{
	alp1 = 1+dcos((_a)/30*90);
	alp2 = 1+dcos((_a-30)/30*90);
	alp3 = 1+dcos((_a-60)/30*90);
	alp4 = 1+dcos((_a-90)/30*90);
	alp5 = 1+dcos((_a-120)/30*90);
}
if _a >= _t{
	_a = 0;
}

stand1.image_alpha = alp4;
stand2.image_alpha = alp5;