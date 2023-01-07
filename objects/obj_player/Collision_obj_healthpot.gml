/// @description Insert description here
// You can write your code in this editor
if (player_health < max_health)
{
	player_health++;
	audio_play_sound(sd_healthpickup, 3, false);
	instance_destroy(other);
}