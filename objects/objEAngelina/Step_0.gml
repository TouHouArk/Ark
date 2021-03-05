_a += 1;
if _a >= 40{
	_a = 0;
}
i1 = (i1+0.5) mod sprite_get_number(sprEAngelina4);
i2 = (i2+0.5) mod sprite_get_number(sprEAngelina6);
tang = (keyboard_check(vk_right)-keyboard_check(vk_left))*10;
if ang != tang{
	ang += sign(angle_difference(tang,ang))*aspd;
}