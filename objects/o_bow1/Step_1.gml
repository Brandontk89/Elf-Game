x = o_player1.x+4
y = o_player1.y+10

image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1
recoil = max(0,recoil - 1)

if (mouse_check_button_pressed(mb_left)) and (firingdelay < 0)
{
	firingdelay = 4
	recoil = 2	
	screenshake(1,3)
	with (instance_create_layer(x,y,"Arrows", o_arrow1))
	{
		speed = 15
		direction = other.image_angle +random_range(-2,2)
		image_angle = direction
	}
}

x = x - lengthdir_x(recoil,image_angle)
y = y - lengthdir_y(recoil,image_angle)

if (image_angle > 80) and (image_angle < 360)
{
	image_yscale = -1
}
else
{
	image_yscale = 1
}

/*if mouse_x < o_player1.x 
{
	image_xscale = -1
}
*/