if st{
	for(var i = 0;i < times;i++){
		var alp = 1-clamp(max((pc - i/(times-1))*5,(i/(times-1) - pc)*40),0,1);
		draw_sprite_ext(sprBLiskarm1,0,(point_x[i]+point_x[i+1])/2,(point_y[i]+point_y[i+1])/2,
		0.5+i/(times-1)*0.5,point_distance(point_x[i],point_y[i],point_x[i+1],point_y[i+1])/6,
		point_direction(point_x[i],point_y[i],point_x[i+1],point_y[i+1])+90,
		merge_color(c_blue,c_white,alp),
		alp)
	}
}