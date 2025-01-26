/// @description

randomize();

active_ingredients = ds_list_create();

mouse_radius = 100;

colors = [c_red, c_fuchsia, c_yellow, c_green, c_white, c_dkgray];

ingredients = ["algae", "coral", "plankton", "kelp", "pearl", "plastic"];

bubble_spawn_timer = 50;
bubble_spawn_tick = 0;

ended = false;

global.ingredientSelected = false;

global.score = 0
global.bubblePopSystem = part_system_create();
part_system_depth(global.bubblePopSystem, 0);

var _p = part_type_create();
part_type_life(_p, 60, 60);
part_type_shape(_p, pt_shape_ring);
part_type_alpha2(_p, 0.75, 0);
part_type_color2(_p, c_white, c_grey);
part_type_size(_p,0.05,0.05,0.15,0);
global.popPart = _p;

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