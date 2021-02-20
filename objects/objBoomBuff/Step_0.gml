_a += 1;
if _a <= 2{
	r = maxr/2*_a;
}
if _a >= 5 && _a <= 10{
	r = maxr*(1-(_a-5)/5);
}
if _a = 10{instance_destroy();}