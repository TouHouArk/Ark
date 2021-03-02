if lifetime != -1 && daze <= 0 && stun <= 0 && ctrl <= 0{
	lifetime -= 1;
	if lifetime = 0{
		instance_destroy();
	}
}
if hp <= 0{
	instance_destroy();
}
daze = min(sign(daze),max(daze-1,0));
stun = min(sign(stun),max(stun-1,0));
ctrl = min(sign(ctrl),max(ctrl-1,0));
slow = min(sign(slow),max(slow-1,0));

if daze > 0{
	spdbuff = 0;
	speed = 0;
}else{
	spdbuff = (1-sign(max(0,stun)))*(1-sign(max(0,ctrl))*0.8)*(1-sign(max(0,slow))*0.5);
}