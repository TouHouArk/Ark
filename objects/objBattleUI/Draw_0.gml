if room = rBattle{
	for(var i = 0;i < bg_w;i++){
		for(var j = bg_h_use-1;j < bg_h;j++){
			var tile_id = bg[# i,j];
			if tile_id != undefined{
				draw_tile(tileMap1,tile_id,style,10+i*40,-440+j*40+bg_y);
			}
			//draw_text(10+i*40,-440+j*40+bg_y,string(tile_id));
		}
	}
}