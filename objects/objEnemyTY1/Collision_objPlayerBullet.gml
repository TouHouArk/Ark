hp -= other.dmg;
with(other){instance_destroy();}
if hp <= 0{
	with(instance_create_depth(x,y,depth+1,objEnemyDie)){
		sprite_index = other.sprite_index;
		image_index = other.image_index;
		image_angle = other.image_angle;
		vspeed = other.vspeed;
		hspeed = other.hspeed;
		high_o = high;
	}
	instance_destroy();
}