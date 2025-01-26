if (!obj_manager.ended){

if (ds_list_size(future_customers) = 0)
{
	customer_reset()
}


empty_slot = noone

ds_list_clear(possible_locations)

for (i = 0; i < active_customer_max; i += 1)
{
	if (array_get(active_customers, i) == noone)
	{
		/*
		empty_slot = i
		break
		*/
		ds_list_add(possible_locations, i)
	}
}

if (ds_list_size(possible_locations) > 0)
{
	var _list_size = ds_list_size(possible_locations)
	var _random_spot = irandom_range(0, _list_size - 1)
	empty_slot = ds_list_find_value(possible_locations, _random_spot)
}


if (empty_slot != noone)
{
	time_since_spawn += 1
	
	var time_left = obj_time.seconds_left - 30
	
	if (time_left < 0)
	{
		time_left = 0
	}
	
	var spawn_offset = 2 * (time_left - 30)
	
	//show_debug_message(spawn_offset)
	
	if (irandom(time_since_spawn + 50) > spawn_rate + spawn_offset)
	{
		//show_debug_message(ds_list_size(future_customers))
		
		time_since_spawn = 0
		var added_customer = ds_list_find_value(future_customers, 0)
		active_customers[empty_slot] = added_customer
		ds_list_delete(future_customers, 0)
		
		with (added_customer)
		{
			active = ACTIVITY_STATUS.ENTERING
			array_position = obj_customer_manager.empty_slot
			for (i = 0; i < ds_list_size(request); i += 1)
			{
				ds_list_add(request_filled, false)
			}
		}
		empty_slot = noone;
	}
}


/*
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
*/

}