/// @desc update-to
switch(text){
	case "对称分布(双倍子弹)": objDanmuEditor.double = sel;break;
	case "方形波": objDanmuEditor.sqrt_wave = sel;break;
	case "重力与移动方向相反": objDanmuEditor.gra_with_dire = sel;break;
}
with(objDanmuEditor){
	_a = -1;
}
with(objEnemyBullet){
	instance_destroy();
}