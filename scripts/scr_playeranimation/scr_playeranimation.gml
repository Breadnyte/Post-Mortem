// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information lalalalal booboo boo abosbdoaw dsasasa dadadada lala
function scr_playeranimation()
{
	var mydirection = round(direction/90); //direction inputs a degree (say we're facing 180 degrees), and mydirection produces a number from 0-3 according to the degree inputed. Basically converts which direction our character is facing into a number to animate. 0 when right, 1 when up, and so on up to 3.
	var totalframes = sprite_get_number(sprite_index) / 4; // returns the amount of frames that are in the sprite currently in use. player running is 32 frames total - dividing it by 4 is needed because we want to seperate the different running animations within the individual sprite, like running to the left or right. 
	image_index = frame + (mydirection * totalframes);
	frame += sprite_get_speed(sprite_index) / 60; //60, because 60 frames per second is the goal
	
	if (frame >= totalframes)
	{
		endanim = true;
		frame -= totalframes;
	}
	else
	{
		endanim = false;
	}
}