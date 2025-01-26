request = ds_list_create()

request_filled = ds_list_create()

enum ACTIVITY_STATUS
{
	FALSE,
	ENTERING,
	ENTERING_ANIMATION,
	TRUE
}

active = ACTIVITY_STATUS.FALSE

lerp_amount = .35

array_position = noone


timer = 0
time_limit = (30 + random_range(-5, 5)) * 60


speech_bubble_offset = 10
speech_bubble_y_offset = 30


function request_complete()
{
	//reward
	ds_list_add(obj_customer_manager.past_customers, id)
	array_set(obj_customer_manager.active_customers, array_position, noone)
	active = ACTIVITY_STATUS.FALSE
	x = -500
	y = -500
	timer = 0
	array_position = noone
}

function request_fail()
{
	//punishment
	ds_list_add(obj_customer_manager.past_customers, id)
	array_set(obj_customer_manager.active_customers, array_position, noone)
	active = ACTIVITY_STATUS.FALSE
	x = -500
	y = -500
	timer = 0
	array_position = noone
}