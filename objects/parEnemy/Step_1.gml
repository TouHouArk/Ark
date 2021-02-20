if !st{
	st = true;
	hp *= max(0.05,global.drone_hpbuff);
	atk *= max(0.05,global.drone_atkbuff);
	defence *= max(0.05,global.drone_defencebuff);
	resist *= max(0.05,global.drone_resistbuff);
	var ad = 1/max(0.2,global.drone_atkspdbuff);
	_t = round(_t*ad);
	lifetime = round(lifetime*ad);
	if global.hard_debuff1 && elite > 0{
		hp *= 1.6;
		atk *= 1.3;
		defence *= 1.3;
	}
}