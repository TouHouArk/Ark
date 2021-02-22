/// @desc update-from
switch(text){
	case "时间周期": num = objDanmuEditor._t;break;
	case "发射间隔": num = objDanmuEditor.dt;break;
	case "中心距离": num = objDanmuEditor.ds;break;
	case "中心角度": num = objDanmuEditor.da;break;
	case "中心角速度": num = objDanmuEditor.aspd;break;
	case "子弹数": num = objDanmuEditor.num;break;
	case "贴图": num = string_replace(sprite_get_name(objDanmuEditor.d_sprite_index),"sprBD","");break;
	case "贴图帧": num = objDanmuEditor.d_image_index;break;
	case "贴图速度": num = objDanmuEditor.d_image_speed;break;
	
	case "速度": num = objDanmuEditor.d_speed;break;
	case "减速度": num = objDanmuEditor.d_friction;break;
	case "方向": num = objDanmuEditor.d_direction;break;
	
	case "重力": num = objDanmuEditor.d_gravity;break;
	case "重力方向": num = objDanmuEditor.d_gravity_direction;break;
	case "自转速度": num = objDanmuEditor.d_aspd;break;
	case "角速度": num = objDanmuEditor.d_dspd;break;
	case "角加速度": num = objDanmuEditor.d_dspd_a;break;
	
	case "跳跃最大次数": num = objDanmuEditor.d_jump_times;break;
	case "当前编辑跳跃": num = objDanmuEditor.jump_edit;break;
	case "跳跃CD": num = objDanmuEditor.d_jump_cd;break;
	case "跳跃速度": num = objDanmuEditor.d_jump_speed[objDanmuEditor.jump_edit];break;
	case "跳跃减速度": num = objDanmuEditor.d_jump_friction[objDanmuEditor.jump_edit];break;
	case "跳跃方向": num = objDanmuEditor.d_jump_direction[objDanmuEditor.jump_edit];break;
	case "跳跃角速度": num = objDanmuEditor.d_jump_dspd[objDanmuEditor.jump_edit];break;
	case "跳跃角加速度": num = objDanmuEditor.d_jump_dspd_a[objDanmuEditor.jump_edit];break;
}