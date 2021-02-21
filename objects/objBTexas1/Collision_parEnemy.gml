if _a = _t || _a = _t+_t2{
	with(other){
		if !anti_search{
			var _i = instance_create_depth(x,y,-50,objBTexas2);
			_i.target = id;
			_i.dmg = other.dmg;
			_i.dmgtype = other.dmgtype;
			_i.sound = other.sound;

			_i.daze_addon = other.daze_addon;
			_i.stun_addon = other.stun_addon;
			_i.ctrl_addon = other.ctrl_addon;
		}
	}
}