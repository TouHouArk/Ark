switch(select){
	case 0:
		for(var i = 0;i < 4;i++){
			ebut[i] = instance_create_depth(32,22,-5,objTitleButton);
			ebut[i].mode = 8+i;
			ebut[i].ed = true;
			ebut[i].alp_c = 0;
		}
		st = true;
	break;
}