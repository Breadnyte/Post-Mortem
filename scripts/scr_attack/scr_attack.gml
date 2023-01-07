// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack()
{
	var foo = 0;
	var evilfoo = 0;
	if (sprite_index != spr_playerattack)
	{
		sprite_index = spr_playerattack;
		frame = 0
		image_index = 0;
	}
	
	scr_playeranimation();
	
	if (image_index >= 0 && image_index < 4)
	{
		foo = -10;
	}
	if (image_index >= 4 && image_index < 8)
	{
		evilfoo = -12;
	}
	if (image_index <= 8 && image_index < 12)
	{
		foo = 10;
	}
	if (image_index >= 12)
	{
		evilfoo = 10;
	}
	instance_create_layer(obj_player.x + foo, obj_player.y + evilfoo, "Instances", obj_hitbox);
	
	if (endanim == true)
	{
		instance_destroy(obj_hitbox);
		state = scr_playerneutral;
		endanim = false;
	}	
}