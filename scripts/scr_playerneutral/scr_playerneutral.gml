// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerneutral()
{
	//movement 
	hspd = lengthdir_x(inputLength * walkspd, inputDirection);	
	vspd = lengthdir_y(inputLength * walkspd, inputDirection);

	//object col
	//scr_objectcollision(obj_wall);

	//animation
	var old = sprite_index; // thingies marked with "var" are temporary and disappear
	if (inputLength != 0)
	{
		direction = inputDirection; //stores current inputDirection, since that variable is always changing. the built-in direction var automatically wraps, ie if i get an angle of 400 which is 40 more than 360, itll adjust accordingly.
		sprite_index = run;
	}
	else
	{
		sprite_index = idle;
	}
	if (old != sprite_index) 
	{
		frame = 0;
	}

	//tile col
	scr_objectcollision(obj_solid); 
	scr_playeranimation();
	
	if (attack)
	{
		audio_play_sound(sd_slash, 5, false);
		state = scr_attack;
	}
}