function Bubble_Free(){
	
	// bounce off ceiling
	if (y<0){
		y = 1;
		yVel /= -2;
	}
	
	if(instance_place(x+xVel,y-yVel,obj_bubble)){
		x -= xVel;
		y += yVel;
		xVel = 0.5 * lengthdir_x(distance_to_object(other),point_direction(x,y,other.x,other.y));
		//xVel = 200 * sin(point_direction(x,y,other.x,other.y)*pi);
		yVel = -sign(yVel) * (yVel + other.yVel) / 6;
		show_debug_message(string(point_direction(x,y,other.x,other.y)));
		
	}
	
	
	// floating
	/*
	if (abs(yVel) < 0.01 && abs(xVel) < 0.01){
		
		if (dormant_count < dormant_timer){
			dormant_count++;
		}
		else {
			yVel = 0;
			xVel = 0;
		}
	}
	else {
	*/
		y -= yVel;
		yVel = min(yVel + accel, 10);
		x += xVel;
		xVel *= 0.95;
	//}
}

function Bubble_Selected(){
	x = lerp(x, mouse_x, 0.2);
	y = lerp(y, mouse_y, 0.2);
}