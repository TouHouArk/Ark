image_xscale = max(0.1,r/32);
image_yscale = max(0.1,r/32);

draw_set_alpha(0.3)
draw_circle_color(x,y,r,color_inside,color_inside_blend,false);
draw_set_alpha(1);
draw_circle_color(x,y,r,color,color,true);