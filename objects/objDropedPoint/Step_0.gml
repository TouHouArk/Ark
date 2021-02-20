if vspeed > 2{vspeed = 2;gravity = 0;}
if abs(hspeed) > 0{hspeed = sign(hspeed)*max(abs(hspeed)-0.2,0)}
_a += 1;
//image_xscale = dsin(_a);
if gravity = 0{
	move_near_to(objPlayer.x,objPlayer.y,80,0.2);
}