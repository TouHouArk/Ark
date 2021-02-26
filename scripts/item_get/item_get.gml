// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_get(itemid){
	switch(itemid){
		case 0 : break;
		case 1 : 
		case 2 : 
		case 3 : objPlayer.shoot_bullet += 1;break;
		case 4 : 
		case 5 : objPlayer.shoot_bullet += 2;break;
		case 6 : objPlayer.shoot_bullet += 3;break;
		case 7 : 
		case 8 : objPlayer.orbit_num += 1;break;
		case 9 : objPlayer.orbit_num += 2;break;
		case 10 : 
		case 11 : 
		case 12 : objPlayer.autoregen += 4;break;
		case 13 : objPlayer.autoregen += 6;break;
		case 14 : objPlayer.autoregen += 8;break;
		case 15 : objPlayer.autoregen += 2;objPlayer.shoot_bullet += 1;break;
		case 16 : objPlayer.autoregen += 2;objPlayer.orbit_num += 1;break;
		case 17 : 
		case 18 : objPlayer.autoregen += 4;objPlayer.shoot_bullet += 1;break;
		case 19 : objPlayer.autoregen += 4;objPlayer.orbit_num += 1;break;
		case 20 : objPlayer.autoregen += 6;objPlayer.shoot_bullet += 2;break;
		case 21 : objPlayer.autoregen += 4;objPlayer.shoot_bullet += 1;objPlayer.orbit_num += 1;break;
		case 22 : global.money += 10;break;
		case 23 : global.money += 18;break;
		case 24 : global.money += 25;break;
		case 25 : global.money_rate += 0.5;break;
		case 26 : global.money_rate += 0.3;break;
		case 27 : var _l = irandom_range(5,10);objPlayer.level += _l;break;
		case 28 : var _l = irandom_range(10,20);objPlayer.level += _l;break;
		case 29 : var _l = irandom_range(20,30);objPlayer.level += _l;break;
		case 30 : break;
		case 31 : break;
		case 32 : break;
		case 33 : break;
		case 34 : break;
		case 35 : break;
		case 36 : break;
		case 37 : break;
		case 38 : break;
		case 39 : break;
		case 40 : break;
		case 41 : break;
		case 42 : global.elite_drop_rate = max(0.2,global.elite_drop_rate);break;
		case 43 : global.elite_drop_rate = max(0.4,global.elite_drop_rate);break;
		case 44 : global.elite_drop_rate = max(0.8,global.elite_drop_rate);break;
		case 45 : global.elite_money += 2;break;
		case 46 : global.elite_money += 3;break;
		case 47 : global.exp_rate += 0.2;break;
		case 48 : global.exp_rate += 0.3;break;
		case 49 : break;
		case 50 : break;
		case 51 : break;
		case 52 : global.shop_price -= 0.5;break;
		case 53 : objPlayer.semi_lifepoint += 1;break;
		case 54 : objPlayer.semi_lifepoint += 2;break;
		case 55 : global.drone_atkbuff -= 0.07;break;
		case 56 : global.drone_atkbuff -= 0.09;break;
		case 57 : global.drone_atkbuff -= 0.12;break;
		case 58 : global.drone_atkbuff -= 0.17;break;
		case 59 : global.drone_defencebuff -= 0.12;break;
		case 60 : global.drone_defencebuff -= 0.15;break;
		case 61 : global.drone_defencebuff -= 0.32;break;
		case 62 : global.drone_defencebuff -= 0.30;break;
		case 63 : global.drone_hpbuff -= 0.10;break;
		case 64 : global.drone_hpbuff -= 0.12;break;
		case 65 : global.drone_hpbuff -= 0.15;break;
		case 66 : global.drone_hpbuff -= 0.20;break;
		case 67 : objPlayer.defencebuff += 0.15;break;
		case 68 : objPlayer.defencebuff += 0.18;break;
		case 69 : objPlayer.defencebuff += 0.25;break;
		case 70 : objPlayer.defencebuff += 0.35;break;
		case 71 : break;
		case 72 : break;
		case 73 : break;
		case 74 : break;
		case 75 : objPlayer.atkbuff += 0.15;objPlayer.orbit_atkbuff += 0.15;break;
		case 76 : objPlayer.atkbuff += 0.18;objPlayer.orbit_atkbuff += 0.18;break;
		case 77 : objPlayer.atkbuff += 0.25;objPlayer.orbit_atkbuff += 0.25;break;
		case 78 : objPlayer.atkbuff += 0.35;objPlayer.orbit_atkbuff += 0.35;break;
		case 79 : objPlayer.maxhpbuff += 0.2;break;
		case 80 : objPlayer.maxhpbuff += 0.24;break;
		case 81 : objPlayer.maxhpbuff += 0.35;break;
		case 82 : objPlayer.maxhpbuff += 0.5;break;
		case 83 : global.drone_dmgbuff_phy += 0.15;break;
		case 84 : global.drone_dmgbuff_phy += 0.18;break;
		case 85 : global.drone_dmgbuff_phy += 0.25;break;
		case 86 : global.drone_dmgbuff_phy += 0.35;break;
		case 87 : global.drone_dmgbuff_art += 0.20;break;
		case 88 : global.drone_dmgbuff_art += 0.23;break;
		case 89 : global.drone_dmgbuff_art += 0.30;break;
		case 90 : global.drone_dmgbuff_art += 0.40;break;
		case 91 : global.drone_dmgbuff_real += 1.50;break;
		case 92 : 
		case 93 : objPlayer.orbit_shoot_bullet += 1;break;
		case 94 : objPlayer.orbit_shoot_bullet += 2;break;
		case 95 : objPlayer.orbit_shoot_bullet += 3;break;
		case 96 : objPlayer.skill_spspd += 0.2;break;
		case 97 : objPlayer.skill_spspd += 0.25;break;
		case 98 : objPlayer.skill_spspd += 0.35;break;
		case 99 : objPlayer.skill_spspd += 0.5;break;
		case 100 : ds_list_add(objPlayer.skill_atksploop,floor(3.5*room_speed/2));break;
		case 101 : ds_list_add(objPlayer.skill_atksploop,floor(3*room_speed/2));break;
		case 102 : ds_list_add(objPlayer.skill_atksploop,floor(2.5*room_speed/2));break;
		case 103 : ds_list_add(objPlayer.skill_atksploop,floor(1.5*room_speed/2));break;
		case 104 : 
		case 105 : 
		case 106 : 
		case 107 : 
		case 108 : 
		case 109 : 
		case 110 : 
		case 111 : 
		case 112 : 
		case 113 : 
		case 114 : 
		case 115 : 
		case 116 : 
		case 117 : 
		case 118 : 
		case 119 : 
		case 120 : 
		case 121 : 
		case 122 : 
		case 123 : 
		case 124 : 
		case 125 : 
		case 126 : 
		case 127 : 
		case 128 : 
		case 129 : 
		case 130 : 
		case 131 : 
		case 132 : 
		case 133 : 
		case 134 : 
		case 135 : 
		case 136 : 
		case 137 : 
		case 138 : 
		case 139 : 
		case 140 : 
		case 141 : 
		case 142 : 
		case 143 : 
		case 144 : 
		case 145 : 
		case 146 : 
		case 147 : 
		case 148 : 
		case 149 : 
		case 150 : 
		case 151 : with(objPlayer){get_skill(skillselect,itemid-100)};break;
		case 152 : break;
		case 153 : break;
		case 154 : break;
		case 155 : break;
		case 156 : break;
		case 157 : break;
		case 158 : break;
		case 159 : break;
		case 160 : break;
		case 161 : break;
		case 162 : break;
		case 163 : break;
		case 164 : break;
		case 165 : break;
		case 166 : break;
		case 167 : global.drone_atkspdbuff -= 0.15;break;
		case 168 : break;
		case 169 : break;
		case 170 : break;
		case 171 : objPlayer.orbit_num += 2;break;
		case 172 : objPlayer.shoot_bullet += 1;objPlayer.orbit_num += 1;break;
		case 173 : 
		case 174 : objPlayer.lifepoint += 3;break;
		case 175 : objPlayer.lifepoint += 4;break;
		case 176 : objPlayer.lifepoint += 5;break;
		case 177 : objPlayer.lifepoint += 1;objPlayer.autoregen += 1;break;
		case 178 : objPlayer.atkbuff += 0.35;objPlayer.defencebuff += 0.35;objPlayer.maxhpbuff += 0.45;objPlayer.orbit_atkbuff += 0.35;objPlayer.orbit_defencebuff += 0.35;objPlayer.orbit_maxhpbuff += 0.45;break;
		case 179 : global.drone_atkbuff += 0.3;global.drone_defencebuff += 0.3;global.drone_hpbuff += 0.3;break;
		case 180 : global.drone_atkbuff += 0.2;global.drone_defencebuff += 0.2;global.drone_hpbuff += 0.2;global.hard_debuff1 = true;break;
		case 181 : global.drone_atkbuff += 0.2;global.drone_defencebuff += 0.2;global.drone_hpbuff += 0.2;global.hard_debuff2 = true;break;
		case 182 : global.drone_atkbuff += 0.15;global.drone_defencebuff += 0.15;global.drone_hpbuff += 0.15;global.hard_debuff3 = true;break;
	}
}