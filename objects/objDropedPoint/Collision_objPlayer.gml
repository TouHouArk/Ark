var xp = 0;
switch(floor(image_index)){
	case 0: xp = 1;break;
	case 1: xp = 5;break;
	case 2: xp = 25;break;
	case 3: xp = 50;break;
}
objPlayer.xp += xp*global.exp_rate;
instance_destroy();