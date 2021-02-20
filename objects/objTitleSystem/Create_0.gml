depth = 100;
mouse_dpx = 0;
mouse_dpy = 0;
select = -1;
but[0] = instance_create_depth(32,22,0,objTitleButton);
but[0].mode = 0;
but[1] = instance_create_depth(0,88,0,objTitleButton);
but[1].mode = 1;
but[2] = instance_create_depth(160,88,0,objTitleButton);
but[2].mode = 2;
but[3] = instance_create_depth(16,154,0,objTitleButton);
but[3].mode = 3;
but[4] = instance_create_depth(64,220,0,objTitleButton);
but[4].mode = 4;

ebut[0] = -1;

_a = 0;
st = false;
ed = false;