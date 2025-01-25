/// @description

// Test: Create bubbles with spacebar
if (keyboard_check_pressed(vk_space)){
	var _new_bubble = instance_create_layer(random_range(0, room_width),random_range(0, room_height),"Instances", obj_bubble);
	_new_bubble.image_blend = colors[irandom(array_length(colors)-1)];
}


// Add / Track ingredients in geyser

