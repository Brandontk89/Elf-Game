//Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;

hsp  = move * walksp;

vsp = vsp +grv;

if (place_meeting(x,y+1,dirt_o)) && (key_jump)
{
	vsp = -7;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,dirt_o))
{
	while (!place_meeting(x+sign(hsp),y,dirt_o))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,dirt_o))
{
	while (!place_meeting(x,y+sign(vsp),dirt_o))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,dirt_o))
{
	sprite_index = player_spriteA;
	image_speed = 1;	
	if (sign(vsp) > 0) {
		if image_index > 3 {	
			image_index = 1
		}
	} else {
		image_index = 0
	}
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = player_sprite;
	}
	else
	{
		sprite_index = 	player_spriteR;
	}
}
if (hsp != 0) image_xscale = sign(hsp);
