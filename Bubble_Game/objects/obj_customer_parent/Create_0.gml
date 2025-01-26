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

lerp_amount = .15

array_position = noone


timer = 0
time_limit = (30 + random_range(-5, 5)) * 60
timer_color = c_green


speech_bubble_offset = 10
speech_bubble_y_offset = 30

bubble_icon_scale = 1/7


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
	
	//plays the COMPLETED SOUND
	audio_play_sound(Bubble_Given, 0, false);
	
	global.served += 1
	global.score += 100
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
	
	//plays the FRUSTRATED Sound
	audio_play_sound(Frustrated_Fish, 0, false);
	global.missed += 1
	global.score -= 50
}