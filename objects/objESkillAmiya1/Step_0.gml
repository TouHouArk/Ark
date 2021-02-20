_a += 1;
ax += 1;
ay += 1;
az += 1;
dy1 = dsin(_a)*5;
if _a >= 120 && _a mod 2 = 0{
	dx2 = irandom_range(-3,3);
	dy2 = irandom_range(-3,3);
}
if _a = 145{
	ind = 1;
}
if _a >= 180{
	_a = 0;
	ind = 0;
	dx2 = 0;
	dy2 = 0;
}