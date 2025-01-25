if (ds_list_size(future_customers) = 0)
{
	customer_reset()
}



for (i = 0; i < active_customer_max; i += 1)
{
	if (array_get(active_customers, i) = noone)
	{
		empty_slot = i
		break
	}
	else 
	{
		empty_slot = noone
	}
}


if (empty_slot != noone)
{
	time_since_spawn += 1
	
	if (irandom(time_since_spawn + 50) > spawn_rate)
	{
		show_debug_message(ds_list_size(future_customers))
		
		time_since_spawn = 0
		var added_customer = ds_list_find_value(future_customers, 0)
		array_insert(active_customers, empty_slot, added_customer)
		
		ds_list_delete(future_customers, 0)
		with (added_customer)
		{
			active = true
			array_position = obj_customer_manager.empty_slot
			for (i = 0; i < ds_list_size(request); i += 1)
			{
				ds_list_add(request_filled, noone)
			}
		}
		empty_slot = noone;
	}
}



if (keyboard_check_pressed(ord("X")))
{
	var _active_count = 0
	for (i = 0; i < 4; i += 1)
	{
		if (array_get(active_customers, i) != noone)
		{
			_active_count += 1
		}
	}
	
	
	show_debug_message(_active_count)
}

