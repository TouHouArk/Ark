depth = 100;
cloud_cd = 60;
_c1 = 0;
_c2 = cloud_cd/2;


//keyboard_set_map(ord("W"),vk_up)
//keyboard_set_map(ord("A"),vk_left)
//keyboard_set_map(ord("S"),vk_down)
//keyboard_set_map(ord("D"),vk_right)

keyboard_set_map(ord("Z"),vk_space)
//keyboard_set_map(ord("X"),vk_shift)
keyboard_set_map(ord("D"),ord("X"))

bgm_play = true;
bgm_intro = false;
global.bgm = -1;

fade = 60;
textfade = 60;
st = false;
stageid[0] = "TH-1"
stagename[0] = "东方军械库"//军械库东
stageid[1] = "TH-2"
stagename[1] = "1442"//1942
stageid[2] = "TH-3"
stagename[2] = "雷电"//雷电
stageid[3] = "TH-4"
stagename[3] = "沙罗曼斐迪亚"//沙罗曼蛇

ts_init()
global.sep = -8;
ts_add_keyword("<br>", ts_line())
ts_add_keyword("</>", ts_backtodrawcolour());
ts_add_keyword("<skill>", ts_colour(make_color_rgb(0,152,226)));
ts_add_keyword("<ps>", ts_colour(make_color_rgb(244,152,80)));
ts_add_keyword("<debuff>", ts_colour(make_color_rgb(255,90,55)));
ts_add_keyword("<white>", ts_colour(c_white));
ts_add_keyword("<black>", ts_colour(c_black));
ts_add_keyword("<semi>", ts_colour(make_color_rgb(50,100,255)));

ts_add_keyword("<outline>", ts_outline(true,c_black))
ts_add_keyword("<rare0>", ts_outline(true,make_color_rgb(75,75,75)));
ts_add_keyword("<rare1>", ts_outline(true,make_color_rgb(75,220,150)));
ts_add_keyword("<rare2>", ts_outline(true,make_color_rgb(220,10,30)));
ts_add_keyword("<shadow>", ts_shadow(true,0,2,c_black,0.2));

global.showgui = true;
global.phonegui = (os_type == os_android || os_type == os_ios);
global.bullet_depth = -30;
global.froze = true;
global.fun = false;
//event_user(0);

global.stage = 0;
global.wave = 0;

global.drone_hpbuff = 1;
global.drone_atkbuff = 1;
global.drone_defencebuff = 1;
global.drone_resistbuff = 1;
global.drone_atkspdbuff = 1;
global.drone_dmgbuff = 1;
global.drone_dmgbuff_phy = 1;
global.drone_dmgbuff_art = 1;
global.drone_dmgbuff_real = 1;
global.drone_level = 0;

global.elite_money = 0;
global.elite_drop_rate = 0;
global.shop_price = 1;

global.money_rate = 1;
global.exp_rate = 1;
global.luck_rate = 1;

global.enemy_killed = 0;
global.money = 0;
global.difficulty = 0;
global.hard_debuff1 = false;
global.hard_debuff2 = false;
global.hard_debuff3 = false;

global.border_left = 60;
global.border_right = 300-60;
global.border_up = 20;
global.border_down = 400-20;

//初始化道具列表
global.enable_items = ds_list_create();
//这里是道具列表
ds_list_add(global.enable_items,
1,2,3,4,5,6,7,8,9,10,
11,12,13,14,15,16,17,18,19,
20,21,22,23,24,25,26,27,28,29,

42,43,44,45,46,47,48,
52,53,54,55,56,57,58,59,
60,61,62,63,64,65,66,67,68,69,
70,75,76,77,78,79,
80,81,82,83,84,85,86,87,88,89,
90,91,92,93,94,95,96,97,98,99,
100,101,102,103,104,105,106,107,108,109,
110,111,112,113,114,115,116,117,118,119,
120,121,122,123,124,125,126,127,128,129,
130,131,132,133,134,135,136,137,138,139,
140,141,142,143,144,145,146,147,148,149,
150,151,
167,
171,172,174,175,176);
global.items_gacha_spsr = ds_list_create();
global.items_gacha_spr = ds_list_create();
global.items_gacha_spn = ds_list_create();
global.items_gacha_sr = ds_list_create();
global.items_gacha_r = ds_list_create();
global.items_gacha_n = ds_list_create();
global.items_carry = ds_list_create();
item_rare_init();

for(var i = 0;i < ds_list_size(global.enable_items);i++){
	var m = ds_list_find_value(global.enable_items,i);
	var r = global.item_rare[m];
	switch(r){
		case 5 : ds_list_add(global.items_gacha_spsr,m);break;
		case 4 : ds_list_add(global.items_gacha_spr,m);break;
		case 3 : ds_list_add(global.items_gacha_spn,m);break;
		case 2 : ds_list_add(global.items_gacha_sr,m);break;
		case 1 : ds_list_add(global.items_gacha_r,m);break;
		default : ds_list_add(global.items_gacha_n,m);break;
	}
}

global.part_system = part_system_create();
shadow_sf = -1;

item_name_init();
item_desc_init();
skill_init();
level_init();
instance_create_depth(0,0,0,objItemHint);
randomize();