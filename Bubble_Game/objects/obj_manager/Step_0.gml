/// @description

bubble_spawn_tick ++;
if (bubble_spawn_tick>=bubble_spawn_timer){
	newBubble();
	bubble_spawn_tick = 0;
}


// Add / Track ingredients in geyser

