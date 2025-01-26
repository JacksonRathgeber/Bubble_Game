/// @description
if (!obj_manager.ended){
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_alpha(1)
draw_set_font(timer_font);
draw_set_font(fnt_paybread)

if (date_get_second(date_current_datetime()) != irl_sec){
	seconds_left --;
	irl_sec = date_get_second(date_current_datetime());
}

if(seconds_left%60 < 10){
	draw_text(room_width*5.9/7, room_height/10, string(floor(seconds_left/60)) + ":0" + string(seconds_left%60));
}
else {
	draw_text(room_width*5.9/7, room_height/10, string(floor(seconds_left/60)) + ":" + string(seconds_left%60));
}

if (seconds_left <= 0 && !obj_manager.ended){
	obj_manager.EndGame();
}
}