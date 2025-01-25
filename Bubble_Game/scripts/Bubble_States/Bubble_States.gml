function Bubble_Free(){
	
	// bounce off ceiling
	if (y<sprite_height/2){
		y = sprite_height/2 + 1;
		yVel /= -2;
	}
	
	if (x<sprite_width/2){
		x = sprite_width/2 + 1;
		xVel /= -2;
	}
	
	else if (y>room_width-sprite_width/2){
		y = room_width - sprite_width/2 - 1;
		xVel /= -2;
	}
	
	y -= yVel;
	yVel = min(yVel + accel, maxVel);
	x += xVel;
	//xVel = sign(xVel) * max(abs(xVel - (accel*5)), 0);
	xVel *= 0.975;
	
	if (mouse_check_button_pressed(mb_left) && point_distance(x,y,mouse_x,mouse_y)<radius){
		state = Bubble_Selected;
		//Play a "tractor beam" sound when selecting bubbles
		audio_play_sound(Pulling_Sound, 0,true,.2,0,1.2);
	}
	
}

function Bubble_Selected(){
	/*
	x = lerp(x, mouse_x, 0.2);
	y = lerp(y, mouse_y, 0.2);
	*/
	
	xVel += abs(mouse_x - x) * 0.01 * sign(mouse_x - x);
	yVel += abs(mouse_y - y) * -0.01 * sign(mouse_y - y);
	
	if (mouse_check_button_released(mb_left)){
		//"Tractor Beam" sound stops when bubbles aren't selected
		audio_stop_sound(Pulling_Sound);
		
		state = Bubble_Free;
		//yVel = 0;
	}
	
	y -= yVel;
	//yVel = min(yVel + accel, 10);
	x += xVel;
	xVel *= 0.85;
}