/// @description collision with player

if (alarm[0] <= 0)
{
	audio_play_sound(sd_hurt, 4, false);
	alarm[0] = 30;
	state = scr_enemystun;
	obj_player.player_health -= 1;
}
