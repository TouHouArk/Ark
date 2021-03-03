dmg = 100;
dmgtype = damage_type.Art;
sound = -1;
bullet_addon_init();




x_scale = choose(-1,1);
image_speed = 0;
_a = 0;
bullet_addon_init();
lines = objPlayer.shoot_bullet*5;
range = 150;
range_angle = min(180,30+30*objPlayer.shoot_bullet/4);