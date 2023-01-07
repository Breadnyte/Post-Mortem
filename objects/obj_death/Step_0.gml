/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_backspace))
{
	room_goto(rm_title);
	instance_destroy(self);
}
if (keyboard_check(vk_enter))
{
	room_goto(rm_title);
	instance_destroy(self);
}