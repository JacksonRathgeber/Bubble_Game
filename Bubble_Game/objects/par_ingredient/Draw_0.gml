/// @description

if(clicked){

	draw_sprite_ext(sprite_index, 0, start_x, start_y, 0.1, 0.1, 0, c_gray, 1);
	draw_sprite_ext(sprite_index, 0, start_x, start_y, 0.09, 0.09, 0, c_black, 1);
	
	draw_self();
}

else if (just_released){
	draw_sprite_ext(sprite_index, 0, start_x, start_y, 0.1, 0.1, 0, c_gray, fade_alpha);
	draw_sprite_ext(sprite_index, 0, start_x, start_y, 0.09, 0.09, 0, c_black, fade_alpha);
	draw_sprite_ext(sprite_index, 0, start_x, start_y, 0.1, 0.1, 0, c_white, 1-fade_alpha);
	
	fade_alpha -= 0.02;
	
}

else{
	/*
	if(collision_circle(mouse_x,mouse_y,10,id,false,false) != noone){
		draw_sprite_ext(sprite_index, 0, x, y, 0.15, 0.15, 0, c_black, 1);
	}
	*/
	draw_self();	
}

if (fade_alpha <= 0){

	just_released = false;
	fade_alpha = 1;
}