if !other.inv && (other.sprite_index = sprBW2 || other.sprite_index = sprBW3){
	other._a += 1;
	if other._a >= time{
		var _r = boom_range;
		if other.sprite_index = sprBW3{
			_r *= 0.5;
		}
		(instance_create_depth(other.x,other.y,depth+1,objBoomBuff)).maxr = _r;
		var _i = instance_create_depth(other.x,other.y,100,objEnemyBoom);
		_i.alarm[0] = 1;
		_i.image_xscale = boom_range/32;
		_i.image_yscale = boom_range/32;
		_i.dmg = other.dmg*1.5;
		_i.dmgtype = other.dmgtype;
		instance_destroy(other);
	}else{
		other.image_blend = make_color_rgb(255,255*(1-other._a/time),255*(1-other._a/time));
	}
}