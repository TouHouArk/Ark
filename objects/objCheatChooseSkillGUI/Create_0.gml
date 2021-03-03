left = 50;
right = 1150;
top = 120;
bottom = 720;

skill_min = 0;
skill_max = 51;

i_row = 12;
i_col = 5;
daw = false;
if instance_exists(objEnemyWaves){
	instance_deactivate_object(objEnemyWaves);
	daw = true;
}