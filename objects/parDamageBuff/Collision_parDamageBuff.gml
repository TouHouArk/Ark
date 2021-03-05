if other.object_index = object_index && other.target = target && (other.dmg_t > dmg_t || (other.dmg_t = dmg_t && other.id > id)){
	other.dmg = max(dmg,other.dmg)
	instance_destroy();
}