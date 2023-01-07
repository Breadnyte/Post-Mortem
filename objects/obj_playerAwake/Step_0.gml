/// @description player movement

//player input
left = keyboard_check(vk_left) || keyboard_check(ord("A"));
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
up = keyboard_check(vk_up) || keyboard_check(ord("W"));
down = keyboard_check(vk_down) || keyboard_check(ord("S"));


roll = keyboard_check(vk_shift); // decided not to add this feature for the final
attack = mouse_check_button_pressed(mb_left); 
item = keyboard_check_pressed(ord("Q")); //also temporary, maybe Q key?
interact = keyboard_check_pressed(ord("E"));

inputDirection = point_direction(0, 0, right-left, down-up); // returns direction of vector formed by inputs, or an angle. first 0/0 marks first vector as the players position, and second inputs cancel each other out to remove speed bonus from moving diagonally
inputLength = (right - left != 0) || (down - up != 0); //useful for animation. if it returns a true (1), that means the player is moving. If false (0), they are idle.


if (player_health <= 0)
{
	game_restart()
}

if (keyboard_check_pressed(ord("R"))) //temp, for testing purposes
{
	game_restart();
}
if (keyboard_check(vk_tab))
{
	audio_stop_all()
	room_goto(rm_title);
}

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
	

