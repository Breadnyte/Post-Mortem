/// @description switch statements

current_weather = weather.cloudy;

switch (current_weather)
{
	case weather.cloudy:
		show_message("Clouds swim freely in the blue skies above..");
		break;
	case weather.rainy:
		show_message("Rain hammers down upon you fiercely, wind biting your skin..");
		break;
	case weather.sunny:
		show_message("The sun illuminates the way, bright upon clear blue skies.");
		break;
	case weather.snowy:
		show_message("Cold seeps into your very bones, numbing your limbs and slowing your movements..");
		break;
	case weather.icy:
		show_message("A midnight freeze has left the floor slippery. Watch your step..");
		break;
}
		
