/// @description

// Test: Create bubbles with spacebar
if (keyboard_check_pressed(vk_space)){
	instance_create_layer(random_range(0, room_width),random_range(0, room_height),"Instances", obj_bubble);
}


// Add / Track ingredients in geyser

