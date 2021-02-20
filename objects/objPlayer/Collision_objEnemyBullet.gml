if !other.inv{
	if inv <= 0{
		hp -= damage_calc(other.dmg,defence,resist,other.dmgtype,false);
		inv = 1;
	}
	with(other){if sound != -1{audio_play_sound(sound,1,false)}instance_destroy();}
}