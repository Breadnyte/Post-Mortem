/// @description Insert description here
// You can write your code in this editor
draw_set_font(ft_menu);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
margin = 60;

for (var i = 0; i < array_length_1d(menu); i++)
{
	if (i == pos)
	{
		draw_set_color(c_maroon);
		draw_set_font(ft_selection);
	}
	else
	{
		draw_set_font(ft_menu);
		draw_set_color(c_white);
	}
	draw_text(x + margin, y + (margin * i), menu[i])
}

draw_sprite(sprite_index, 0, x - 20, y + (pos * margin));