var _i = instance_create_depth(x,y,0,objPlayerBoom);
_i.image_xscale = range/32;
_i.image_yscale = range/32;
_i.dmg = dmg;
_i.dmgtype = dmgtype;
_i.daze_addon = daze_addon;
_i.stun_addon = stun_addon;
_i.ctrl_addon = ctrl_addon;
_i.slow_addon = slow_addon;
(instance_create_depth(x,y,0,objBoomBuff)).maxr = range;
audio_play_sound(e_skill_wc4explo,1,false);