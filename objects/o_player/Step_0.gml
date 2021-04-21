//controls
key_up = keyboard_check(vk_up);
key_down= keyboard_check(vk_down);
key_jump= keyboard_check_pressed(vk_space);
key_slide= keyboard_check(vk_control);


frames += 1;


//speed and excetions
var move = key_down- key_up;
vsp = move * walkspeed;

// vertical colission
if (place_meeting(x,y+vsp,o_wall))
{
	while (!place_meeting(x,y+sign(vsp),o_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

if (key_slide) && (slide !=1 )
{
	
	slide = 1
	sprite_index = s_heros
	alarm[3] = 30 

}

//jump function
if (key_jump) && (jump != 1)
{
	vsp = j_height;
	jump = 1
	sprite_index = s_heroj
	alarm[2] = 30 

}
//starts the game with any key 
if keyboard_check_pressed(vk_anykey) && (start == 0)
{
	instance_destroy(obj_anyk);	
	obj_control.alarm[0] = 20; //starts control objects
	obj_control.alarm[1] = 25
	obj_control.alarm[2] = 60
	obj_control.alarm[3] = 30
	global.count_up = true; //starts count
	start = 1; 
}
if dead == 1
{
	sprite_index = s_herod
	obj_background.hspeed = 0;
	obj_ground.hspeed = 0;
	vsp = vsp + 3;

}


//if below map go to menu and check for new high score
if y >= 800
{
	if score > highscore_value(10)
	{

		name = get_string("New highscore ! \nEnter a 10 or less character name:", "")
		if string_length(name) > 11
		{
			 name = string_copy(name, 1, 10);
		}
		highscore_add(name, score)
	}
    score = 0;	   
	room_goto(rm_menu);

}
		
y = y + vsp;

//stops player from getting out of the zone
if (y <= 280)
{
y = 500;		
}
