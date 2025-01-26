/// @description

/*
draw_set_color(c_orange);
draw_circle(mouse_x,mouse_y,mouse_radius,true);
*/


for (var i = 0; i<ds_list_size(active_ingredients); i++){
	
	draw_sprite_ext(
	ingredients[ds_list_find_value(active_ingredients, i)],
	1,
	room_width/2 - 200 + (85 * i),
	room_height*95/100,
	0.25,
	0.25,
	0,
	image_blend,
	1
	);
}
