randomize();

direction = random(360);
state = scr_enemyneutral;
speed = 1.5;
hspd = speed;
vspd = speed;
colmap = layer_tilemap_get_id(layer_get_id("collision"));
image_speed = 0;
