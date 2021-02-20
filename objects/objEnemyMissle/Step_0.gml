if aspd != 0{
	image_angle += aspd;
}
if dspd != 0{
	direction += dspd;
}
if bounce{
	move_bounce_solid(true);
}