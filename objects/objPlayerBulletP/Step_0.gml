event_inherited();
if lifetime != -1{
	lifetime -= 1;
	if lifetime < 30{
		image_alpha = lifetime/30;
	}
	if lifetime = 0{
		instance_destroy();
	}
}