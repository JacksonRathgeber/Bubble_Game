if (active == ACTIVITY_STATUS.TRUE or active == ACTIVITY_STATUS.ENTERING or active == ACTIVITY_STATUS.ENTERING_ANIMATION)
{
	draw_self()
	
	
	if (timer/time_limit < 1/3)
	{
		timer_color = #03fc13
	}
	else if (timer/time_limit < 2/3)
	{
		timer_color = c_yellow
	}
	else
	{
		timer_color = c_red
	}
	
	var portion_of_time_passed = 1 - (timer/time_limit)
	
	draw_rectangle_color(x - .5 * sprite_width, y + .5 * sprite_height + 8, 
		x - .5 * sprite_width + sprite_width * portion_of_time_passed, y + .5 * sprite_height + 20, 
		timer_color, timer_color, timer_color, timer_color, false)

	/*
	if (active = ACTIVITY_STATUS.TRUE)
	{
		
		draw_ellipse(x + sprite_width, y - .5 * ellipse_height, 
			x + sprite_width + 40 * ds_list_size(request), y + .5 * ellipse_height, false)

		for (i = 0; i < ds_list_size(request); i += 1)
		{
			draw_sprite_ext(spr_bubbleSet2, ds_list_find_value(request, i), x + sprite_width + .5 * ellipse_width +  40 * i, y, 1/9, 1/9, 0, c_white, 1)
			
			if (ds_list_find_value(request_filled, i) == true)
			{
				draw_sprite(spr_checkmark, 0, x + .5 * ellipse_width + 50 * i, y + .5 * ellipse_height)
			}
		}
	
	}
	*/
}

