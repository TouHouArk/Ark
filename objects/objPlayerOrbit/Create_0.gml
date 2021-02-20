dx = 0;
dy = 0;
sdx = 0;
sdy = 0;
adx = 0;
ady = 0;
tgdx = 0;
tgdy = 0;
spd = 2;
_d = 0;
_s = 0;
high = 20;

shoot_bullet = 1;
range = 15;
level = 1;

maxlevel = 90;
maxhp_l = 2000;
atk_l = 593;
defence_l = 200;
resist_l = 0;
maxhp_h = 2000;
atk_h = 712;
defence_h = 753;
resist_h = 0;
shoot_cd_o = 69;

maxhpbuff = 1;
atkbuff = 1;
defencebuff = 1;
resistbuff = 1;
shootbuff = 1;
atkspd = 108;

maxhp = 2000;
hp = 2000;
atk = 593;
defence = 200;
resist = 0;
level_refresh();

if objSystem.fade <= 0{
	audio_play_sound(b_char_tokenset,1,false);
}