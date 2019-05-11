/// @description Move to Next Room

with (o_player1)
{
	if (hascontrol)
	{
		hascontrol = false
		slidetransition(TRANS_MODE.GOTO,other.target)
	}
	}