active_customer_max = 4

active_customers = array_create(active_customer_max, noone)

future_customers = ds_list_create()

past_customers = ds_list_create()

empty_slot = noone


time_since_spawn = 0
spawn_rate = 30


number_of_customer_1s = 10

number_of_customer_2s = 10

number_of_customer_3s = 8

number_of_customer_4s = 8

number_of_customer_5s = 5

for (var i = 0; i < number_of_customer_1s; i += 1)
{
	var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_1)
	ds_list_add(future_customers, current_instance)
	with (current_instance)
	{
		ds_list_add(request, irandom_range(0, 5))
	}
}

for (var i = 0; i < number_of_customer_2s; i += 1)
{
	var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_2)
	ds_list_add(future_customers, current_instance)
	with (current_instance)
	{
		ds_list_add(request, irandom_range(0, 5))
	}
}

for (var i = 0; i < number_of_customer_3s; i += 1)
{
	var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_3)
	ds_list_add(future_customers, current_instance)
	with (current_instance)
	{
		ds_list_add(request, irandom_range(0, 5))
		ds_list_add(request, irandom_range(0, 5))
	}
}

for (var i = 0; i < number_of_customer_4s; i += 1)
{
	var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_4)
	ds_list_add(future_customers, current_instance)
	with (current_instance)
	{
		ds_list_add(request, irandom_range(0, 5))
		ds_list_add(request, irandom_range(0, 5))
	}
}

for (var i = 0; i < number_of_customer_5s; i += 1)
{
	var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_5)
	ds_list_add(future_customers, current_instance)
	with (current_instance)
	{
		ds_list_add(request, irandom_range(0, 5))
		ds_list_add(request, irandom_range(0, 5))
		ds_list_add(request, irandom_range(0, 5))
	}
}


ds_list_shuffle(future_customers)




function customer_reset()
{
	var past_customer_list = ds_list_size(past_customers)
	for (i = 0; i < past_customer_list; i += 1)
	{
		var current_customer = ds_list_find_value(past_customers, 0)
		with (current_customer)
		{
			x = -500
			y = -500
			ds_list_clear(request)
			if (customer_type == 1 or customer_type == 2)
			{
				ds_list_add(request, irandom_range(0, 5))
			}
			else if (customer_type == 3 or customer_type == 4)
			{
				ds_list_add(request, irandom_range(0, 5))
				ds_list_add(request, irandom_range(0, 5))
			}
			else if (customer_type == 5)
			{
				ds_list_add(request, irandom_range(0, 5))
				ds_list_add(request, irandom_range(0, 5))
				ds_list_add(request, irandom_range(0, 5))
			}
		}
		ds_list_add(future_customers, current_customer)
		ds_list_delete(past_customers, 0)
	}
	ds_list_shuffle(future_customers)
}