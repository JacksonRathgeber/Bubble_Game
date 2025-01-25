request = ds_list_create()

request_filled = ds_list_create()

active = false

array_position = noone




function request_complete()
{
	//reward
	ds_list_add(obj_customer_manager.past_customers, id)
	array_set(obj_customer_manager.active_customers, array_position, noone)
	active = false
	x = -500
	y = -500
	array_position = noone
}