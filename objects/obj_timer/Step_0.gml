if (global.count_up == true)
{
	global.seconds += 1/room_speed;
	
	score = score + global.seconds/5 ;
}

if (global.seconds < 60) && (global.seconds > 59.9)
{
	global.seconds = 0;
	global.minutes += 1;
	score = score + 100;
}

if (global.minutes == 60)
{
	global.minutes = 0;
	global.hours += 1;
	score = score + 1000;
}