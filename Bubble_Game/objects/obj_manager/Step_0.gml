/// @description
if (!ended){
	bubble_spawn_tick ++;
	if (bubble_spawn_tick>=bubble_spawn_timer){
		newBubble();
		bubble_spawn_tick = 0;
	}
		
	for (var i = 0; i < ds_list_size(ingredient_countdowns); i++){
		
		ingredient_countdowns[| i] --;
		
		if (ingredient_countdowns[| i] <= 0){
			
			ds_list_delete(ingredient_countdowns, i);
			ds_list_delete(active_ingredients, i);
		}
	}
	
}
/*
if (keyboard_check_pressed(ord("D"))){
	EndGame()
}
*/

// Add / Track ingredients in geyser

window_set_size(browser_width,browser_height)