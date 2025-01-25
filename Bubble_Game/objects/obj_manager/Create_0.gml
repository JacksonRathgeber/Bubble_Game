/// @description

active_ingredients = ds_list_create();

mouse_radius = 150;

colors = [c_red, c_fuchsia, c_yellow, c_green, c_white, make_color_rgb(150,75,0)];

ingredients = [];

randomize();

function newBubble(){
	
	var _new_bubble = instance_create_layer(random_range(room_width/3, 2*room_width/3),random_range(room_height*2/3, room_height),"Instances", obj_bubble);
	_new_bubble.ind = irandom(array_length(colors)-1);
	_new_bubble.image_blend = colors[_new_bubble.ind];
}