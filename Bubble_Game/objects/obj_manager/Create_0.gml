/// @description

randomize();

active_ingredients = ds_list_create();

mouse_radius = 150;

colors = [c_red, c_fuchsia, c_yellow, c_green, c_white, c_dkgray];

ingredients = ["algae", "coral", "plankton", "kelp", "pearl", "plastic"];

bubble_spawn_timer = 50;
bubble_spawn_tick = 0;

ended = false;

global.score = 0

function newBubble(){
	
	if(ds_list_size(active_ingredients)>=1){
		
		var _new_bubble = instance_create_layer(random_range(2*room_width/5, 3*room_width/5),random_range(room_height*2/3, room_height),"Instances", obj_bubble);
		_new_bubble.ind = ds_list_find_value(active_ingredients, irandom(ds_list_size(active_ingredients)-1));
		//show_debug_message(typeof(_new_bubble.ind));
		//show_debug_message(string(typeof(ds_list_find_value(active_ingredients, irandom(ds_list_size(active_ingredients)-1)))));
		_new_bubble.image_index = _new_bubble.ind;
	}
	
	//show_debug_message(ds_list_size(active_ingredients));
	
}

function EndGame(){
	if (!ended){
		instance_create_depth(x,y,-1000,obj_endGameManager)
		ended = true;
	}
}