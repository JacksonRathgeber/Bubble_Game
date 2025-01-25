if (array_position = 0)
{
	x = 150
	y = 50
}
else if (array_position = 1)
{
	x = 300
	y = 50
}
else if (array_position = 2)
{
	x = 450
	y = 50
}
else if (array_position = 3)
{
	x = 600
	y = 50
}
else 
{
	x = -500
	y = -500
}

if (active == true)
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

