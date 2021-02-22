var text = "";
text = text + "for(var i = 0;i < "+string(num)+(double?"*2":"")+";i++){\n";
text = text + "	var _i = instance_create_depth(x";
if ds != 0{text = text + "+lengthdir_x("+string(ds)+","+string(da)+"+i*360/"+string(num)+")"}
text = text + ",y";
if ds != 0{text = text + "+lengthdir_y("+string(ds)+","+string(da)+"+i*360/"+string(num)+")"}
text = text + ",global.bullet_depth,"+((d_jump_times >= 1)?"objEnemyBulletJump" : "objEnemyBullet")+");\n"
text = text + "	_i.sprite_index = "+sprite_get_name(d_sprite_index)+";\n";
if d_image_index != -1{text = text + "	_i.image_index = "+string(d_image_index)+";\n"}
if d_image_speed != 1{text = text + "	_i.image_speed = "+string(d_image_speed)+";\n"}
if d_speed != 0{text = text + "	_i.speed = "+string(d_speed)+";\n"}
if d_friction != 0{text = text + "	_i.friction = "+string(d_friction)+";\n"}
text = text + "	_i.direction = ";
if da != 0{text = text + string(da)+"+";}
if d_direction != 0{text = text + string(d_direction)+"+";}
if aspd != 0{text = text + "_a/"+string(dt)+"*"+string(aspd)+"+";}
text = text + "i*360/"+string(num)+";\n"
if d_gravity != 0{text = text + "	_i.gravity = "+string(d_gravity)+";\n"}
if d_gravity_direction != 0{text = text + "	_i.gravity_direction = "+string(d_gravity_direction)+";\n"}
if d_aspd != 0{text = text + "	_i.aspd = "+string(d_aspd)+";\n"}
if d_dspd != 0{text = text + "	_i.dspd = "+string(d_dspd)+";\n"}
if d_dspd_a != 0{text = text + "	_i.dspd_a = "+string(d_dspd_a)+";\n"}
if d_jump_times >= 1{
text = text + "	_i.jump_times = "+string(d_jump_times)+";\n";
text = text + "	_i.jump_cd = "+string(d_jump_cd)+";\n";
text = text + "	_i.alarm[0] = "+string(d_jump_cd)+";\n";
for(var j = 0;j < d_jump_times;j++){
text = text + "\n"
text = text + "	_i.jump_speed["+string(j)+"] = "+string(d_jump_speed[j])+";\n";
text = text + "	_i.jump_friction["+string(j)+"] = "+string(d_jump_friction[j])+";\n";
text = text + "	_i.jump_direction["+string(j)+"] = "+string(d_jump_direction[j])+";\n";
text = text + "	_i.jump_dspd["+string(j)+"] = "+string(d_jump_dspd[j])+";\n";
text = text + "	_i.jump_dspd_a["+string(j)+"] = "+string(d_jump_dspd_a[j])+";\n";
}
}
if double{
text = text + "	if i >= num{\n";
text = text + "		_i.direction = -_i.direction;\n";
text = text + "		_i.aspd = -_i.aspd;\n";
text = text + "		_i.dspd = -_i.dspd;\n";
text = text + "		_i.dspd_a = -_i.dspd_a;\n";
text = text + "		for(var j = 0;j < jump_times;j++){\n";
text = text + "		_i.jump_direction[j] = -_i.jump_direction[j];\n";
text = text + "		_i.jump_dspd[j] = -_i.jump_dspd[j];\n";
text = text + "		_i.jump_dspd_a[j] = -_i.jump_dspd_a[j];\n";
text = text + "		}\n";
text = text + "	}\n";
}
text = text + "	_i.dmg = atk;\n"
text = text + "	_i.dmgtype = damage_type.Physic;\n"
text = text + "}\n"
clipboard_set_text(text);
show_message(text);