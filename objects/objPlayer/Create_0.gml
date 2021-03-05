image_speed = 1;
_s = 0;
high = 20;
point_alpha = 0;
//基础数据初始化
level = 1;
move_speed = 2;
lifepoint = 3;
semi_lifepoint = 0;
semi_lifepoint_used = 0;
maxlevel = 80;
xp = 0;
xpneed = 100;
//面板数据初始化
maxhp_l = 1398;
atk_l = 614;
defence_l = 110;
resist_l = 20;
maxhp_h = 1680;
atk_h = 712;
defence_h = 121;
resist_h = 20;
shoot_cd_o = 48;
//BUFF倍率初始化
maxhpbuff = 1;
atkbuff = 1;
defencebuff = 1;
resistbuff = 1;
shootbuff = 1;
shoot_bullet = 3;
atkspd = 108;
orbit_maxhpbuff = 1;
orbit_atkbuff = 1;
orbit_defencebuff = 1;
orbit_resistbuff = 1;
orbit_shootbuff = 1;
orbit_shoot_bullet = 1;
orbit_atkspd = 108;
orbit_range = 15;
//可变化数据初始化
maxhp = 1398;
hp = 1398;
atk = 614;
defence = 110;
resist = 20;
level_refresh();
//技能初始化
skill_num = 3;
skillselect = 0;
skill = -1;
skill_spspd = 1;
skill_dmgscale = 1;
skill_time = 0;
get_skill(0,1);
get_skill(1,2);
get_skill(2,3);
skill_tag[0] = 0;
skill_effect = -1;
//特殊数据初始化
disarm = 0;
stuck = 0;
inv = 0;
undead = 0;
autoregen = 25;
healling_cd = -1;
heal = 0;
heal_time = 0;
autoattack = false;
dmgtype = damage_type.Art;
dmgtype_o = 1;
skill_atksploop = ds_list_create();
skill_atksploop_a = 0;
shoot_combo = 0;
shoot_combo_delay = 2;
//无人机初始化
orbit_num = 2;
orbit_num_now = 2;
orbit_respawn_cd = 10;
_o = 0;
orbits = ds_list_create();
orbit_refresh();
//擦弹特效定义
part_nearbullet = part_type_create();
part_type_life(part_nearbullet,30,45);
part_type_gravity(part_nearbullet,0.5,270);
part_type_speed(part_nearbullet,3,5,0,0);
part_type_direction(part_nearbullet,30,150,0,0);
part_type_color1(part_nearbullet,c_white);
part_type_alpha2(part_nearbullet,1,0);

cheat_time = 0;