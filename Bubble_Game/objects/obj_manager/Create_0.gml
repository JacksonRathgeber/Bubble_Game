/// @description

active_ingredients = ds_list_create();

mouse_radius = 150;

colors = [c_red, c_fuchsia, c_yellow, c_green, c_white, c_dkgray];

ingredients = ["algae", "coral", "plankton", "kelp", "pearl", "oil"];

randomize();

function newBubble(){
	
	if(ds_list_size(active_ingredients)>=1){
		
		var _new_bubble = instance_create_layer(random_range(room_width/3, 2*room_width/3),random_range(room_height*2/3, room_height),"Instances", obj_bubble);
		_new_bubble.ind = ds_list_find_value(active_ingredients, irandom(ds_list_size(active_ingredients)-1));
		//show_debug_message(typeof(_new_bubble.ind));
		//show_debug_message(string(typeof(ds_list_find_value(active_ingredients, irandom(ds_list_size(active_ingredients)-1)))));
		_new_bubble.image_blend = colors[_new_bubble.ind];
	}
	
	//show_debug_message(ds_list_size(active_ingredients));
	
}