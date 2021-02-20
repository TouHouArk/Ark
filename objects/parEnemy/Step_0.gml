if lifetime != -1{
	lifetime -= 1;
	if lifetime = 0{
		instance_destroy();
	}
}
if ctrl > 0{
	ctrl -= 1;
}
if stun > 0{
	stun -= 1;
}

if stun > 0{
	spdbuff = 0;
}else if ctrl > 0{
	spdbuff = 0.2;
}else{
	spdbuff = 1;
}