/// @description

clicked = false;
lst = obj_manager.active_ingredients;

if (instance_place(x,y,obj_geyser)){
		
	var _added = false;
	for (var i = 0; i < ds_list_size(lst); i++){
		
		if (lst[| i] == id){
		
			_added = true;
		}
	}
	if (!_added){
	
		ds_list_add(lst, id);
	}
	
	var _debug_str = "Geyser contains: ";
	for (var i = 0; i < ds_list_size(lst); i++){
		
		_debug_str += string(ds_list_find_value(lst, i));
	}
	show_debug_message(_debug_str);
}
