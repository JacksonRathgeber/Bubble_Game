/// @description Insert description here
// You can write your code in this editor

text = ["Welcome to the sea floor!",
"The thermal vents down here make for the perfect kitchen",
"Lets start up a pot and start serving customers!",
"To get going, start by adding some blue coral to the pot",
"The pot will then start producing blue bubbles",
"Drag a bubble to the customer to feed them",
"More customers will arrive periodically",
"Throw in more ingredients to get the pot producing more bubbles",
"Some customers might require multiple bubbles to be satisfied",
"Serve customers before they run out of patience",
"Now you are all set for your first shift! Good Luck!"
]
activeText = ""
progress = 0

manualProgress = true
ingredientsIn = 0
served = 0
function Next(){
	
	progress+=1

	if (progress == 3){
		instance_create_depth(1568,928,-1000,obj_pearl)
		manualProgress = false
	}
	if (progress == 4){
		manualProgress = true
	}
	if (progress == 5){
		//show_debug_message("SPAWNING")
		var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_1)
		with (current_instance)
		{
			ds_list_add(request, 0)
			ds_list_add(request_filled, false)
			array_position = 1
			active = ACTIVITY_STATUS.ENTERING
		}
		manualProgress = false
	}
	if (progress == 6){
		manualProgress = true
	}
	if (progress == 7){
		manualProgress = false
		instance_create_depth(1344,928,-1000,obj_coral)
		instance_create_depth(608,928,-1000,obj_plankton)
		instance_create_depth(128,928,-1000,obj_algae)
	}
	if (progress == 8){
		manualProgress = false
		var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_1)
		with (current_instance)
		{
			ds_list_add(request, 5)
			ds_list_add(request_filled, false)
			array_position = 0
			active = ACTIVITY_STATUS.ENTERING
		}
		var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_3)
		with (current_instance)
		{
			ds_list_add(request, 0)
			ds_list_add(request, 5)
			ds_list_add(request_filled, false)
			ds_list_add(request_filled, false)
			array_position = 1
			active = ACTIVITY_STATUS.ENTERING
		}
		/*
		var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_3)
		with (current_instance)
		{
			ds_list_add(request, 2)
			ds_list_add(request, 4)
			ds_list_add(request_filled, false)
			ds_list_add(request_filled, false)
			array_position = 3
			active = ACTIVITY_STATUS.ENTERING
		}
		*/
	}
	if (progress == 9){
		//show_debug_message("SPAWNING")
		var current_instance = instance_create_layer(-500, -500, "Instances", obj_customer_5)
		with (current_instance)
		{
			ds_list_add(request, 0)
			ds_list_add(request, 4)
			ds_list_add(request, 2)
			ds_list_add(request_filled, false)
			ds_list_add(request_filled, false)
			ds_list_add(request_filled, false)
			array_position = 3
			active = ACTIVITY_STATUS.ENTERING
		}
		manualProgress = false
	}
	if (progress == 10){
		
		manualProgress = true
	}
	if (progress == 11){
		room_goto(rm_main)
	}
}