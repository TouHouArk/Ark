if lifetime != -1 && daze <= 0 && stun <= 0 && ctrl <= 0{
	lifetime -= 1;
	if lifetime = 0{
		instance_destroy();
	}
}
if daze > 0{
	daze -= 1;
}
if stun > 0{
	stun -= 1;
}
if ctrl > 0{
	ctrl -= 1;
}

if daze > 0{
	spdbuff = 0;
	speed = 0;
}else if stun > 0{
	spdbuff = 0;
}else if ctrl > 0{
	spdbuff = 0.2;
}else{
	spdbuff = 1;
}