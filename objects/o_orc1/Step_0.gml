vsp = vsp + grv

//Horizontal Collision
if (place_meeting(x+hsp,y,o_dirt1))
{
	while (!place_meeting(x+sign(hsp),y,o_dirt1))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
	sprite_index = s_orc1;
	image_speed = 0	
	if (sign(vsp) > 0) image_index =4; else image_index = 0
}
else
{
	image_speed = 1
	if (hsp == 0)
	{
		sprite_index = s_orc1
	}
	else
	{
		sprite_index = s_orc1
	}
}

if (hsp != 0) image_xscale = sign(hsp) * size
image_yscale = size