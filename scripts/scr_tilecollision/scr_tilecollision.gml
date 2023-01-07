// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tilecollision(input)
{
	var collision = false;
	if (tilemap_get_at_pixel(input.colmap, x + input.hspd, y)) // return of 1 means a hit, 0 means no hit
	{
		x -= x % 16;
		if (sign(input.hspd) == 1) x += 16 - 1;
		{
			input.hspd = 0;
			collision = true;
		}
	}
	x += input.hspd;
	
	if (tilemap_get_at_pixel(input.colmap, x, y + input.vspd)) // return of 1 means a hit, 0 means no hit
	{
		y -= y % 16;
		if (sign(input.vspd) == 1) y += 16 - 1;
		{
			input.vspd = 0;
			collision = true;
		}
	}
	y += input.vspd;
	
	
	return collision;
}