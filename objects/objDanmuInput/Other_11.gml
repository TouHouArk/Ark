/// @desc update-to
switch(text){
	case "时间周期": objDanmuEditor._t = num;break;
	case "发射间隔": objDanmuEditor.dt = num;break;
	case "中心距离": objDanmuEditor.ds = num;break;
	case "中心角度": objDanmuEditor.da = num;break;
	case "中心角速度": objDanmuEditor.aspd = num;break;
	case "子弹数": objDanmuEditor.num = num;break;
	case "贴图": objDanmuEditor.d_sprite_index = asset_get_index("sprBD"+string(num));break;
	case "贴图帧": objDanmuEditor.d_image_index = num;break;
	case "贴图速度": objDanmuEditor.d_image_speed = num;break;
	
	case "速度": objDanmuEditor.d_speed = num;break;
	case "减速度": objDanmuEditor.d_friction = num;break;
	case "方向": objDanmuEditor.d_direction = num;break;
	
	case "重力": objDanmuEditor.d_gravity = num;break;
	case "重力方向": objDanmuEditor.d_gravity_direction = num;break;
	case "自转速度": objDanmuEditor.d_aspd = num;break;
	case "角速度": objDanmuEditor.d_dspd = num;break;
	case "角加速度": objDanmuEditor.d_dspd_a = num;break;
	
	case "跳跃最大次数": num = clamp(num,0,10);objDanmuEditor.d_jump_times = num;break;
	case "当前编辑跳跃": 
		num = clamp(num,0,max(0,objDanmuEditor.d_jump_times-1))
		objDanmuEditor.jump_edit = num;
		with(objDanmuInput){
			if text != "当前编辑跳跃"{
				event_user(0);
			}
		};
		break;
	case "跳跃CD": num = max(1,num);objDanmuEditor.d_jump_cd = num;break;
	case "跳跃速度": objDanmuEditor.d_jump_speed[objDanmuEditor.jump_edit] = num;break;
	case "跳跃减速度": objDanmuEditor.d_jump_friction[objDanmuEditor.jump_edit] = num;break;
	case "跳跃方向": objDanmuEditor.d_jump_direction[objDanmuEditor.jump_edit] = num;break;
	case "跳跃角速度": objDanmuEditor.d_jump_dspd[objDanmuEditor.jump_edit] = num;break;
	case "跳跃角加速度": objDanmuEditor.d_jump_dspd_a[objDanmuEditor.jump_edit] = num;break;
}
with(objDanmuEditor){
	_a = -1;
}
with(objEnemyBullet){
	instance_destroy();
}