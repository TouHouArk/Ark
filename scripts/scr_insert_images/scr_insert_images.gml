/// @description  scr_insert_images
function scr_insert_images(argument0) {
	var input=argument0, output="";

	for(var i=0; i<ds_list_size(input); i++)
	{
	    output+=ts_image(ds_list_find_value(input, i))
	}

	return output;



}
