/// @description
if (!ended){
bubble_spawn_tick ++;
if (bubble_spawn_tick>=bubble_spawn_timer){
	newBubble();
	bubble_spawn_tick = 0;
}
}
if (keyboard_check_pressed(ord("D"))){
	EndGame()
}

// Add / Track ingredients in geyser

