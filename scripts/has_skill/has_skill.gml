function has_skill(skill_id){
	var _v = false;
	for(var i = 0;i < objPlayer.skill_num;i++){
		if objPlayer.skill_id[i] = skill_id{
			_v = true;
			break;
		}
	}
	return _v;
}