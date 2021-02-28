_a = 0;
depth = 180;
style = 0;

block[0] = instance_create_depth(0,0,0,objBorder)
block[0].image_xscale = 300/80;
block[0].image_yscale = global.border_up/80;

block[1] = instance_create_depth(0,400,0,objBorder)
block[1].image_xscale = 300/80;
block[1].image_yscale = -(400-global.border_down)/80;

block[2] = instance_create_depth(0,0,0,objBorder)
block[2].image_xscale = global.border_left/80;
block[2].image_yscale = 400/80;

block[3] = instance_create_depth(300,0,0,objBorder)
block[3].image_xscale = -(300-global.border_right)/80;
block[3].image_yscale = 400/80;

bg_w = 7;
bg_h = 20;
bg_h_use = 10;
bg_y = 0;
bg_spd = 1;
bg = ds_grid_create(bg_w,bg_h);
prts_x = 678;
prts_y = 111;
skill_x = 1093;
skill_y = 451;
ds_grid_set_region(bg,0,0,bg_w-1,bg_h-1,22);
event_user(1);