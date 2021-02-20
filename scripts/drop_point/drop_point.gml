function drop_point(point_value){
	var r1 = 0;//50
	var r2 = 0;//25
	var r3 = 0;//5
	var r4 = 0;//1
	
	r4 = point_value;
	r3 = irandom(floor(r4/5*0.8));
	r4 -= r3*5;
	r2 = irandom(floor(r3/5*0.8));
	r3 -= r2*6;
	r1 = irandom(floor(r2/2*0.8));
	r2 -= r1*2;
	repeat(r1){with(instance_create_depth(x,y,50,objDropedPoint)){image_index = 3;direction = irandom(359);speed = 2+irandom(10)/10;}}
	repeat(r2){with(instance_create_depth(x,y,50,objDropedPoint)){image_index = 2;direction = irandom(359);speed = 2+irandom(10)/10;}}
	repeat(r3){with(instance_create_depth(x,y,50,objDropedPoint)){image_index = 1;direction = irandom(359);speed = 2+irandom(10)/10;}}
	repeat(r4){with(instance_create_depth(x,y,50,objDropedPoint)){image_index = 0;direction = irandom(359);speed = 2+irandom(10)/10;}}
}