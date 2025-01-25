/// @description Adding Ingredients to Geyser

clicked = false;
obj_manager.active_ingredients = obj_manager.active_ingredients;

if (instance_place(x,y,obj_geyser)){
		
	var _added = false;
	for (var i = 0; i < ds_list_size(obj_manager.active_ingredients); i++){
		
		if (obj_manager.active_ingredients[| i] == ingredient_ind){
		
			_added = true;
		}
	}
	if (!_added){
	
		ds_list_add(obj_manager.active_ingredients, ingredient_ind);
	}
	
	var _debug_str = "Geyser contains: ";
	for (var i = 0; i < ds_list_size(obj_manager.active_ingredients); i++){
		
		_debug_str += string(ds_list_find_value(obj_manager.active_ingredients, i));
	}
	show_debug_message(_debug_str);
}
