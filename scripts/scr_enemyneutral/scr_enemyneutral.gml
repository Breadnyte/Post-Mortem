// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemyneutral()
{
	image_speed = 1;
	switch(direction div 90)
	{
		case 0:
			sprite_index = spr_skeleton_right;
			break;
		case 1:
			sprite_index = spr_skeleton_left;
			break;
		case 2:
			sprite_index = spr_skeleton_up;
			break;
		case 3:
			sprite_index = spr_skeleton_down;
			break;
	}

if (point_distance(x, y, obj_player.x, obj_player.y) < 80)
	{
		move_towards_point(obj_player.x, obj_player.y, 1.7);
	}
}