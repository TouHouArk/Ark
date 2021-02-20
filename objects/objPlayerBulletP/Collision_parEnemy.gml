var ct = true;
if ds_list_size(meeting_objects) >= 1{
	if ds_list_find_index(meeting_objects,other.id) != -1{
		ct = false;
	}
}
if ct{
	ds_list_add(meeting_objects,other.id)
	with(other){
		hp -= damage_calc(other.dmg,defence,resist,other.dmgtype,true);
		if hp <= 0{
			instance_destroy();
		}
	}
}