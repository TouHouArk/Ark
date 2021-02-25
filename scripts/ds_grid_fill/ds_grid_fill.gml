/// @description  ds_grid_fill(id, val1,[val2,...])
/// @param  id
/// @param  val1
/// @param  [val2
function ds_grid_fill(id){
	var width = ds_grid_width(id)
	for(var i = 0;i < argument_count-1;i++){
		id[# i mod width, floor(i/width)] = argument[i+1];
	}
	return id;
}