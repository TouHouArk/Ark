dmg = 0;
dmgtype = damage_type.Art;
dmg_cd = round(room_speed/2);
bullet_addon_init();
sound = -1;

range = objPlayer.shoot_bullet/4;
image_xscale = range;
image_yscale = range;
y -= image_yscale*40;
can_damage = false;
image_alpha = 0;
image_speed = 0;
small_angle = 45;

_a = 0;
times = 7;
now_time = 0;
daze_addon = room_speed/2;
ed = false;
audio_play_sound(p_skill_blacktimewand_layer,1,false);