// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_menu()
{
	switch(pos)
	{
		case 0:
			audio_stop_all()
			audio_play_sound(sd_stranger, 10, true);
			room_goto(rm_cell);
			break;
		case 1:
			room_goto(rm_controls);
			break;
		case 2:
			room_goto(rm_objective);
			break;
		case 3:	
			room_goto(rm_lore);
			break;
		case 4:
			game_end();
	}
}