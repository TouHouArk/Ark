/// @desc update-to
switch(text){
	case "对称分布(双倍子弹)": objDanmuEditor.double = sel;break;
	case "方形波": objDanmuEditor.sqrt_wave = sel;break;
	case "贴图方向同移动方向": objDanmuEditor.img_with_dire = sel;break;
	case "间距逐渐变大": objDanmuEditor.larger = sel;break;
}
with(objDanmuEditor){
	_a = -1;
}
with(objEnemyBullet){
	instance_destroy();
}