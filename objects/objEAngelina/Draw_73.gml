gpu_set_blendmode(bm_add);
draw_sprite_ext(sprEAngelina3,clamp(_a,0,23),x,y,1,1,ang,col,0.8*image_alpha);
draw_sprite_ext(sprEAngelina3,clamp(_a-15,0,23),x,y,-1,1,ang,col,0.8*image_alpha);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(sprEAngelina4,i1,x+lengthdir_x(35,90+ang),y+lengthdir_y(35,90+ang),1,1,ang,col,0.4*image_alpha);
draw_sprite_ext(sprEAngelina6,i2,x+lengthdir_x(10,270+ang),y+lengthdir_y(10,270+ang),1,1,ang,col,0.4*image_alpha);