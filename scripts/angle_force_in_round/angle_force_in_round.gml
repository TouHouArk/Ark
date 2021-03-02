function angle_force_in_round(ang){
	return (sign(ang)*(abs(ang) mod 360) + 360) mod 360;
}