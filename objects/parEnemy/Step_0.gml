if lifetime != -1 && daze <= 0 && stun <= 0 && ctrl <= 0{
	lifetime -= 1;
	if lifetime = 0{
		instance_destroy();
	}
}
if hp <= 0{
	instance_destroy();
}
daze = max(-1,min(sign(daze)*abs(daze),max(daze-1,0)));
stun = max(-1,min(sign(stun)*abs(stun),max(stun-1,0)));
ctrl = max(-1,min(sign(ctrl)*abs(ctrl),max(ctrl-1,0)));
slow = max(-1,min(sign(slow)*abs(slow),max(slow-1,0)));

if daze > 0{
	spdbuff = 0;
	speed = 0;
}else{
	spdbuff = (1-sign(max(0,stun)))*(1-sign(max(0,ctrl))*0.8)*(1-sign(max(0,slow))*0.5);
}