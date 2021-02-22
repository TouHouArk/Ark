depth = global.bullet_depth + 1;
sf = surface_create(room_width,room_height);
instance_create_depth(x,y,global.bullet_depth - 1,objBulletShaderEnd);