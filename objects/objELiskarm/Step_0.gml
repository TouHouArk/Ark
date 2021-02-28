_a += 1;
pc = 1-(1-_a/_t)*(1-_a/_t);
if _a >= _t{
	instance_destroy();
}