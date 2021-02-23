x = objPlayer.x;
y = objPlayer.y;
ang = (ang+aspd) mod 360;

if !instance_exists(objW){
	image_alpha -= 0.025;
	if image_alpha <= 0{
		instance_destroy();
	}
}else if image_alpha < 0.5{
	image_alpha += 0.005;
}