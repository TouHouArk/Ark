if point_distance(x,y,objPlayer.x,objPlayer.y) <= 100{
	move_towards_point(objPlayer.x,objPlayer.y,speed+0.2);
}
if place_meeting(x,y,objPlayer){
	event_user(0);
}