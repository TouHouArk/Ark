var _p = alarm[0]/20;
image_blend = make_color_hsv(0,0,255*_p);
high = high_o*_p;
image_alpha = _p;
image_xscale = 0.5+0.5*_p;
image_yscale = 0.5+0.5*_p;