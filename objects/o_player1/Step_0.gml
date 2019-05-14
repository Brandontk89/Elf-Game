//Get Player Input

if (hascontrol)

key_left = keyboard_check(ord ("A"))
key_right = keyboard_check(ord ("D"))
key_jump = keyboard_check_pressed(vk_space);


//Calculate Movement
var move = key_right - key_left;

hsp  = move * walksp;

vsp = vsp +grv;

if (place_meeting(x,y+1,o_dirt1)) && (key_jump)
{
	vsp = -7;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,o_dirt1))
{
	while (!place_meeting(x+sign(hsp),y,o_dirt1))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,o_dirt1))
{
	while (!place_meeting(x,y+sign(vsp),o_dirt1))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,o_dirt1))
{
	sprite_index = s_playerAir;
	image_speed = 0;	
	if (sign(vsp) > 0) {
		if image_index > 3 
		{	
			image_index = 1
		}
} 
	else 
	{
				image_index = 0
	}
}
else
{
	if (sprite_index == s_playerAir) audio_play_sound(sn_land,1,false)
		audio_sound_pitch(sn_arrowshot,choose(0.8,1.0,1.5))
		image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = s_player;
	}
	else
	{
		sprite_index = 	s_playerRun;
	}
}
if (hsp != 0) image_xscale = sign(hsp)