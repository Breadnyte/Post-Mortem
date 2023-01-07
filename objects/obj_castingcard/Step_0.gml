/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

script_execute(state);

if (obj_playerAwake.x >= 5000 && doneso == 0)
{
	doneso = 1;
	state = scr_hurrdurr;
	audio_stop_all();
	alarm[0] = room_speed * 2;
}



