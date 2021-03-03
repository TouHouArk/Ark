function macro_battle(){
	enum damage_type{
		Physic,
		Art,
		Real,
		Unknown
	}
	enum sp_type{
		Auto,
		Attacked,
		GetAttacked,
		None
	}
	enum cast_type{
		Cast,
		Auto,
		AutoWhenAttack,
		AutoWhenGetAttack,
		AutoWhenRespawn,
		AutoWhenDead,
		AutoWhenHPLow,
		Switch,
		None
	}
}