///@description setting vars

image_speed = 0; //controls speed of associated sprite animation; in this case, stops the spinning entirely
hspd = 0; //represents horiontal move speed
vspd = 0; //represents vertical move speed
walkspd = 2.5; 

run = spr_player_run;
idle = spr_player;
frame = 0;

player_health = 6;
max_health = player_health;

colmap = layer_tilemap_get_id(layer_get_id("collision"));
state = scr_playerneutral;

ismoving = false;

var targetroom, targetx, targety;