speed = jump_speed[jump_now]
friction = jump_friction[jump_now]
direction += jump_direction[jump_now]
dspd = jump_dspd[jump_now]
dspd_a = jump_dspd_a[jump_now]
jump_now += 1;
if jump_now < jump_times{
	alarm[0] = jump_cd;
}else{
	alarm[1] = lifetime;
}