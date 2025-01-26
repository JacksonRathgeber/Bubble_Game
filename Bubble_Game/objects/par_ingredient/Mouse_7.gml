/// @description Adding Ingredients to Geyser

clicked = false;
just_released = true;
global.ingredientSelected = false;


obj_manager.active_ingredients = obj_manager.active_ingredients;

if (instance_place(x,y,obj_geyser)){
		
	// Check if ingredient is already in geyser, add if not
	var _added = false;
	for (var i = 0; i < ds_list_size(obj_manager.active_ingredients); i++){
		
		if (obj_manager.active_ingredients[| i] == ingredient_ind){
		
			_added = true;
		}
	}
	if (!_added){
		audio_play_sound(Add_Ingredient, 0, false);
		ds_list_add(obj_manager.active_ingredients, ingredient_ind);
		ds_list_add(obj_manager.ingredient_countdowns, obj_manager.ingredient_duration);
	}
}

x = start_x;
y = start_y;
