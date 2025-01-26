if (!obj_manager.ended){
if (active == ACTIVITY_STATUS.ENTERING)
{
	if (array_position = 0)
	{
		x = -50
		y = 600
	}
	else if (array_position = 1)
	{
		x = 1970
		y = 600
	}
	else if (array_position = 2)
	{
		x = -50
		y = 300
	}
	else if (array_position = 3)
	{
		x = 1970
		y = 300
	}
	active = ACTIVITY_STATUS.ENTERING_ANIMATION
}
else if (active == ACTIVITY_STATUS.ENTERING_ANIMATION)
{
	if (array_position = 0)
	{
		x = lerp(x, 220, lerp_amount)
		if (x >= 200) 
		{
			active = ACTIVITY_STATUS.TRUE
		}
	}
	else if (array_position = 1)
	{
		x = lerp(x, 1600, lerp_amount)
		if (x <= 1620) 
		{
			active = ACTIVITY_STATUS.TRUE
		}
		
	}
	else if (array_position = 2)
	{
		x = lerp(x, 220, lerp_amount)
		if (x >= 200) 
		{
			active = ACTIVITY_STATUS.TRUE
		}
	}
	else if (array_position = 3)
	{
		x = lerp(x, 1600, lerp_amount)
		if (x <= 1620) 
		{
			active = ACTIVITY_STATUS.TRUE
		}
	}
}
else if (active == ACTIVITY_STATUS.TRUE)
{
	if (array_position = 0)
	{
		x = 220
		y = 600
	}
	else if (array_position = 1)
	{
		x = 1600
		y = 600
	}
	else if (array_position = 2)
	{
		x = 220
		y = 300
	}
	else if (array_position = 3)
	{
		x = 1600
		y = 300
	}
	else 
	{
		x = -500
		y = -500
	}
}

if (active == ACTIVITY_STATUS.TRUE)
{
	//checks if you win:
	var _completion_counter = 0

	for (i = 0; i < ds_list_size(request_filled); i += 1)
	{
		if (ds_list_find_value(request_filled, i) == true)
		{
			_completion_counter += 1
		}
	}

	if (_completion_counter = ds_list_size(request_filled))
	{
		request_complete()
	}
	
	//checks if you lose:
	timer++;
	if (timer > time_limit)
	{
		request_fail()
	}
}
}
