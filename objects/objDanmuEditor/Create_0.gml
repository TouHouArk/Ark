ox = 450;
oy = 200;
x = ox;
y = oy;
speed = 0;
_t = -1;

num = 4;
aspd = 0;
dt = 5;
ds = 0;
da = 0;

d_sprite_index = sprBD8;
d_image_index = 0;
d_image_speed = 1;
d_speed = 2;
d_friction = 0;
d_direction = 0;
d_gravity = 0;
d_gravity_direction = 270;
d_aspd = 0;
d_dspd = 0;
d_dspd_a = 0;

jump_edit = 0;
d_jump_times = 0;
d_jump_cd = 60;
for(var i = 0;i<= 10;i++){
	d_jump_speed[i] = 0;
	d_jump_friction[i] = 0;
	d_jump_direction[i] = 0;
	d_jump_dspd[i] = 0;
	d_jump_dspd_a[i] = 0;
}

double = false;
sqrt_wave = false;
gra_with_dire = false;

_a = -1;

atk = 0;
global.focus = -1;
window_set_caption("东方大风车批量生产商 ~ 你知道么？克洛斯有一句语音是KO~KO~DA~YO~")