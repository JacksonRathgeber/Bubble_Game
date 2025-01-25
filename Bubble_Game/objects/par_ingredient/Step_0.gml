/// @description

if (clicked){
	
	x = lerp(x, mouse_x, lerp_val);
	y = lerp(y, mouse_y, lerp_val);
}

else {
	x = lerp(x, start_x, lerp_val);
	y = lerp(y, start_y, lerp_val);
}