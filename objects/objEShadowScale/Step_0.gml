image_xscale = max(image_xscale-spd,0);
image_yscale = max(image_yscale-spd,0);
if image_xscale <= 0 || image_yscale <= 0{
	instance_destroy();
}