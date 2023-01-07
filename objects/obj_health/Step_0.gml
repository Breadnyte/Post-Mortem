sprite_index = spr_fullhealth;
if (obj_player.player_health == 5)
{
	sprite_index = spr_5of6;
}
if (obj_player.player_health == 4)
{
	sprite_index = spr_4of6;
}
if (obj_player.player_health == 3)
{
	sprite_index = spr_3of6;
}
if (obj_player.player_health == 2)
{
	sprite_index = spr_2of6;
}
if (obj_player.player_health == 1)
{
	sprite_index = spr_lowhealth;
}
if (obj_player.player_health < 1)
{
	sprite_index = spr_dead;
}

x = camera_get_view_x(view_camera[0]) + 30;
y = camera_get_view_y(view_camera[0]) + 30;