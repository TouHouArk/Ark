hp -= damage_calc(other.dmg,defence,resist,other.dmgtype,true);
if hp <= 0{
	instance_destroy();
}
if other.stun_addon > 0 && stun != -1{
	stun = other.stun_addon;
}
if other.ctrl_addon > 0 && ctrl != -1{
	ctrl = other.ctrl_addon;
}