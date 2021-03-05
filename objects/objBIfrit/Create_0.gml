dmg = 0;
dmgtype = damage_type.Physic;
bullet_addon_init();
sound = -1;

_a = 0;
_t = 30;
image_alpha = 0;
audio_play_sound(p_skill_flameexplo_1,1,false);

var _i = instance_create_depth(x,y,global.bullet_depth,objAnimeBuff);
_i.sprite_index = sprEIfrit;
_i.image_alpha = 0.8;