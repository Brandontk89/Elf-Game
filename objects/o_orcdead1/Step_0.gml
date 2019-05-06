if (done == 0)
{
	vsp = vsp + grv

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
		if (vsp > 0) 
		{
		done = 1
		image_index = 0
		}
		while (!place_meeting(x,y+sign(vsp),o_dirt1))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}