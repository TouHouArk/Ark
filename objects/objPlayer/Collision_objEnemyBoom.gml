if inv <= 0{
	hp -= damage_calc(other.dmg,defence,resist,other.dmgtype,false);
	inv = 1;
}