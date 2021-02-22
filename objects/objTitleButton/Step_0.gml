var dpx = objTitleSystem.mouse_dpx;
var dpy = objTitleSystem.mouse_dpy;
var ox = 0+dx;
var oy = 50+dy;
var ax = -dpy*0.05;
var ay = -0.05+dpx*0.1;
w = (310+166*(mode = 0 || mode >= 8))*image_xscale;
h = (132)*image_yscale;

dx1 = ox+20*dpx+(y+dy)*ax;
dy1 = oy+(x+dx)*ay+20*dpy;
dx4 = ox+20*dpx+(y+dy+h)*ax;
dy4 = oy+(x+dx)*ay+20*dpy+h;

dx2 = ox+20*dpx+w+(y+dy)*ax;
dy2 = oy+(x+dx+w)*ay+20*dpy;
dx3 = ox+20*dpx+w+(y+dy+h)*ax;
dy3 = oy+(x+dx+w)*ay+20*dpy+h;
/*
if keyboard_check(ord("1")){dx1 = mouse_x-x;dy1 = mouse_y-y;}
if keyboard_check(ord("2")){dx2 = mouse_x-x;dy2 = mouse_y-y;}
if keyboard_check(ord("3")){dx3 = mouse_x-x;dy3 = mouse_y-y;}
if keyboard_check(ord("4")){dx4 = mouse_x-x;dy4 = mouse_y-y;}*/

mdx = (dx1+dx2+dx3+dx4)/4;
mdy = (dy1+dy2+dy3+dy4)/4;

var mouse_in_side = point_in_triangle(mouse_x-x,mouse_y-y,dx1,dy1,dx2,dy2,mdx,mdy) || point_in_triangle(mouse_x-x,mouse_y-y,dx2,dy2,dx3,dy3,mdx,mdy) || point_in_triangle(mouse_x-x,mouse_y-y,dx3,dy3,dx4,dy4,mdx,mdy) || point_in_triangle(mouse_x-x,mouse_y-y,dx4,dy4,dx1,dy1,mdx,mdy)
if mouse_check_button_released(mb_left) && mouse_in_side && !ed{
	switch(mode){
		case 0: case 1: case 2: case 3: case 4: case 5: 
			if objTitleSystem.select = mode{
				with(objTitleSystem){event_user(1);}
				depth = 0;
				objTitleSystem.select = -1;
				ed = true;
			}else{
				objTitleSystem.select = mode;
				depth = -10;
				with(objTitleSystem){event_user(0);}
				ed = true;
			}
		break;
		case 8: case 9: case 10: case 11:
			objTitleSystem.ed = true;
			with(objTitleButton){ed = true;}
			objSystem.st = true;
			global.difficulty = mode-8;
		break;
	}
}

if !ds{
	if mouse_check_button(mb_left) && mouse_in_side{
		alp = max(0.5,alp-0.05);
	}else{
		alp = min(1,alp+0.05);
	}
}else{
	alp -= 0.1;
	if alp <= 0{
		instance_destroy();
	}
}