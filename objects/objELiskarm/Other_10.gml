var x0 = x;
var y0 = y;
var x1 = tgx;
var y1 = tgy;
var len = point_distance(x0,y0,x1,y1);
times = floor(len/10)+irandom(3);
point_x[0] = x0;
point_y[0] = y0;
for(var i = 0;i <= times;i++){
	var ranvar = floor(ran*i/times);
	point_x[i] = x0 + (x1 - x0)*i/times+irandom_range(-ranvar,ranvar);
	point_y[i] = y0 + (y1 - y0)*i/times+irandom_range(-ranvar,ranvar);
}
st = true;