draw_set_font(font0)
draw_set_color(c_blue)

if (global.seconds < 10) && (global.minutes < 10)
{
	draw_text(500, 30, string (global.hours)+ ":0" + string(global.minutes) + ":0" + string(global.seconds))
}
else if (global.seconds >= 10) && (global.hours >= 10)
{
	draw_text(500, 30, string (global.hours)+ ":0" + string(global.minutes) + ":0" + string(global.seconds))	
}
else if (global.seconds < 10) && (global.minutes >= 10)
{
draw_text(500, 30, string (global.hours)+ ":" + string(global.minutes) + ":0" + string(global.seconds))	
}
else if (global.seconds >= 10) && (global.minutes < 10)
{
draw_text(500, 30, string (global.hours)+ ":0" + string(global.minutes) + ":" + string(global.seconds))	
}
