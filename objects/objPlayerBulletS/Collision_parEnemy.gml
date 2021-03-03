speed = sign(speed)*max(abs(speed)-friction_meet,0);
with(other){enemy_get_attacked(other.id)}