vspeed = !st*min(1,vspeed)+st*vspeed;
hspeed = !st*sign(hspeed)*max(0,abs(hspeed)-0.2)+st*hspeed;
move_near_to(objPlayer.x,objPlayer.y,st*range,acce,5);