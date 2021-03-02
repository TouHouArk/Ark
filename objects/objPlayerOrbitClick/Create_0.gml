spd = 2;
_d = 0;
_s = 0;
high = 20;

round_ang = 0;
look_angle = 90;
now_angle = 90;
aspd = 10;
dspd = 2;
dis = 30;
follow = -1;
home_x = 0;
home_y = 0;
now_x = 0;
now_y = 0;
follow_x = 0;
follow_y = 0;
action = 0;
_a = 0;
skilling = false;
skill_bullet_alp = 0;

shoot_bullet = 1;
level = 1;

maxlevel = 70;
maxhp_l = 1094;
atk_l = 264;
defence_l = 100;
resist_l = 20;
maxhp_h = 1440;
atk_h = 315;
defence_h = 120;
resist_h = 20;
shoot_cd_o = 39;

maxhpbuff = 1;
atkbuff = 1;
defencebuff = 1;
resistbuff = 1;
shootbuff = 1;
atkspd = 108;

maxhp = 1094;
hp = 1094;
atk = 264;
defence = 120;
resist = 20;
level_refresh();

combo = 0;
dmg = 0;
dmgtype = damage_type.Art

daze_addon = 60;
stun_addon = 0;
ctrl_addon = 0;
slow_addon = 0;

sound = -1;

if objSystem.fade <= 0{
	audio_play_sound(b_char_tokenset,1,false);
}