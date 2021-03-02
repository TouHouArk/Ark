_a += 1;
if _a = 5{
	var _cl = ds_list_create();
	var _num = collision_rectangle_list(ox-60,oy-180,ox+60,oy+20,parEnemy,false,true,_cl,false);
	ds_list_shuffle(_cl);
	for(var i = 0;i < min(_num,objPlayer.shoot_bullet);i++){
		with(_cl[| i]){
			var _i = instance_create_depth(x,y,depth+1,objBWPlayer);
			_i.dmg = other.dmg;
			_i.dmgtype = other.dmgtype;
			_i.target = id;
			_i.daze_addon = other.daze_addon;
			_i.stun_addon = other.stun_addon;
			_i.ctrl_addon = other.ctrl_addon;
			_i.slow_addon = other.slow_addon;
		}
	}
	audio_play_sound(e_skill_wcountdown,1,false);
}
if _a >= 15{
	image_alpha -= 0.2;
	if image_alpha = 0{
		instance_destroy();
	}
}