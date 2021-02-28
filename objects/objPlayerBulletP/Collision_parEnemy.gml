var ct = true;
if ds_list_size(meeting_objects) >= 1{
	if ds_list_find_index(meeting_objects,other.id) != -1{
		ct = false;
	}
}
if ct{
	ds_list_add(meeting_objects,other.id)
	with(other){enemy_get_attacked(other.id)}
	if sound != -1{audio_play_sound(sound,1,false)};
}