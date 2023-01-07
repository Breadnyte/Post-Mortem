// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_keyboard()
{
	var up = keyboard_check_pressed(vk_up);
	var down = keyboard_check_pressed(vk_down);
	var	select = keyboard_check_pressed(vk_enter);
	
	var move = down - up;
	
	if (move != 0)
	{
		pos += move;
		var size = array_length_1d(menu);
		
		if (pos < 0)
		{
			pos = size - 1;
		}
		else if (pos >= size)
		{
			pos = 0;
		}
			
	}
	if (select)
	{
		scr_menu();
	}
	
}
