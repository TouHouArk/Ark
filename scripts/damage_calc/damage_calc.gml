function damage_calc(damage,defence,resist,dmgtype,i_m_enemy){
	var acdmg = 0;
	if dmgtype = damage_type.Physic{
		acdmg = max(damage*0.05,damage-defence);
		if i_m_enemy{
			acdmg *= global.drone_dmgbuff*global.drone_dmgbuff_phy;
		}
	}else if dmgtype = damage_type.Art{
		acdmg = max(damage*0.05,damage*(100-resist)/100);
		if i_m_enemy{
			acdmg *= global.drone_dmgbuff*global.drone_dmgbuff_art;
		}
	}else if dmgtype = damage_type.Real{
		acdmg = damage;
		if i_m_enemy{
			acdmg *= global.drone_dmgbuff*global.drone_dmgbuff_real;
		}
	}
	return acdmg;
}