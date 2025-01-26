
event_inherited();

if (active == ACTIVITY_STATUS.TRUE)
{
	if (array_position == 0 or array_position == 2)
	{
		draw_sprite(spr_speech_bubble_1, 0, x + .5 * sprite_width + speech_bubble_offset, y - speech_bubble_y_offset)
	
		for (i = 0; i < ds_list_size(request); i += 1)
		{
			draw_sprite_ext(spr_bubbleSet2, ds_list_find_value(request, i), 
			x + .5 * sprite_width + speech_bubble_offset + 128, y + 10 - speech_bubble_y_offset, 1/9, 1/9, 0, c_white, 1)
		}
	}
	else if (array_position == 1 or array_position == 3)
	{
		draw_sprite(spr_speech_bubble_1, 0, x - (.5 * sprite_width) - speech_bubble_offset - 256, y - speech_bubble_y_offset)
	
		for (i = 0; i < ds_list_size(request); i += 1)
		{
			draw_sprite_ext(spr_bubbleSet2, ds_list_find_value(request, i), 
			x - (.5 * sprite_width) - speech_bubble_offset - 128, y + 10 - speech_bubble_y_offset, 1/9, 1/9, 0, c_white, 1)
		}
	}
}

