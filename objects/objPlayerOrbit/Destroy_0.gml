with(instance_create_depth(x,y,depth+1,objEnemyDie)){
	sprite_index = other.sprite_index;
	image_index = other.image_index;
	image_angle = other.image_angle;
	vspeed = other.vspeed;
	hspeed = other.hspeed;
	high_o = high;
}

audio_play_sound(b_char_tokendead,1,false);