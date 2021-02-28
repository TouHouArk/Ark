_a += 1;
image_xscale = max_scale;
image_yscale = max_scale;
if _a <= _t{
	scale1 = scale1_from+_a*_a/_t/_t*(scale1_mid-scale1_from);
	scale2 = scale2_from+_a/_t*(scale2_mid-scale2_from);
	fade_alp = _a/_t;
}
if _a >= _t+1 && _a < _t+_t2{
	scale1 = scale1_mid+(_a-_t)/_t2*(scale1_to-scale1_mid);
	scale2 = scale2_mid+(_a-_t)/_t2*(scale2_to-scale2_mid);
	image_alpha = 1-(_a-_t)/_t2;
	fade_alp = 1-(_a-_t)/_t2;
}
if _a = _t+_t2{
	instance_destroy();
}