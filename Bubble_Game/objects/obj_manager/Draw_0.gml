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
	
	var _col = draw_get_color();
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	
	if (ingredient_countdowns[| i]> 2*ingredient_duration/3){
		draw_set_color(c_green);
	}
	else if (ingredient_countdowns[| i]> ingredient_duration/3){
		draw_set_color(c_yellow);
	}
	else {
		draw_set_color(c_red);
	}
	
	
	draw_rectangle(
	room_width/2 - 212 + (85 * i), 
	room_height*9/10, 
	room_width/2 - 188 + (85 * i),
	room_height*(0.8+((ingredient_duration - ingredient_countdowns[| i])/ingredient_duration)*0.1),
	false
	);
	draw_set_color(_col);
}
