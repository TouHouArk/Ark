if !other.inv{
	with(other){
		enemy_get_attacked(other.id);
		other.dmg = other.dmg_addon*defence;
		other.dmgtype = other.dmg_addontype;
		other.sound = -1;
		enemy_get_attacked(other.id);
	}
	instance_destroy();
}