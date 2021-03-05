if can_damage{
	daze_addon = dmg_cd*(times-now_time);
	with(other){enemy_get_attacked(other.id)}
}