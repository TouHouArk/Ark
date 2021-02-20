var dpx = clamp(mouse_x/window_get_width()*2 - 1,-1,1);
var dpy = clamp(mouse_y/window_get_height()*2 - 1,-1,1);

if abs(dpx - mouse_dpx) > 0.01 || abs(dpy - mouse_dpy) > 0.01{
	var dir = point_direction(mouse_dpx,mouse_dpy,dpx,dpy);
	var length = max(0.01,point_distance(mouse_dpx,mouse_dpy,dpx,dpy)/3)
	mouse_dpx += lengthdir_x(1,dir)*length;
	mouse_dpy += lengthdir_y(1,dir)*length;
}

for(var i = 0;i <= 4;i++){
	if select = i || select = -1{
		but[i].dx = min(but[i].dx+4,0);
		but[i].alp_c = min(but[i].alp_c+0.05,1);
		but[i].ed = false;
	}else{
		but[i].dx = max(but[i].dx-4,-100);
		but[i].alp_c = max(but[i].alp_c-0.05,0.5);
		but[i].ed = true;
	}
	
	if select != -1{
		but[i].dy = max(but[i].dy-floor(but[select].y/20),-but[select].y+but[0].y);
	}else{
		but[i].dy = min(but[i].dy+5,0);
	}
}

if select = 0 && st{
	_a++;
	if _a <= 30{
		for(var i = 0;i < 4;i++){
			ebut[i].y = 22+66*(i+1)*_a/30;
			ebut[i].alp_c = min(_a/20,1);
		}
	}
	if _a = 30{
		for(var i = 0;i < 4;i++){
			ebut[i].ed = false;
		}
		_a = 0;
		st = false;
	}
}

