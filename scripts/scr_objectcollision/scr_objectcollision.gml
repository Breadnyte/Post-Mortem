// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_objectcollision(colliding)
{
	//horizontal collision
	if (place_meeting(x + hspd, y, colliding))
	{
		while (!place_meeting(x + sign(hspd), y, colliding))
		{
			x += sign(hspd); 
		}
		hspd = 0;
	}
	x += hspd;

	//vertical collision
	if (place_meeting(x, y + vspd, colliding))
	{
		while (!place_meeting(x, y + sign(vspd), colliding))
		{
			y += sign(vspd);
		}
		vspd = 0;
	}
	y += vspd;
}