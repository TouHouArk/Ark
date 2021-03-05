_a += 1;
if _a < _t && instance_exists(objPlayer){
	x = objPlayer.x;
	y = objPlayer.y;
}
if _a = _t{
	var enemy = ds_list_create();
	var num = collision_rectangle_list(x-20*image_xscale,0,x+20*image_xscale,y,parEnemy,false,true,enemy,false);
	for(var i = 0;i < num;i++){
		with(enemy[| i]){
			enemy_get_attacked(other.id)
			if !anti_search{
				var _i = instance_create_depth(x,y,depth-1,objABurn);
				_i.target = id;
			}
		}
	}
	ds_list_destroy(enemy);
	audio_play_sound(p_skill_flameexplo_3,1,false);
}
if _a >= _t && _a <= _t+180{
	image_alpha = (0.8+sine_ease_move((_a-_t)/10)*0.2)*min(1,(_t+180-_a)/60);
	if instance_exists(objBattleUI){
		y += objBattleUI.bg_spd;
	}
}
if _a = _t+180{
	instance_destroy();
}