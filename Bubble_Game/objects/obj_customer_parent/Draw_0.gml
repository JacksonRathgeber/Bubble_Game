if (active == ACTIVITY_STATUS.TRUE or active == ACTIVITY_STATUS.ENTERING or active == ACTIVITY_STATUS.ENTERING_ANIMATION)
{
	draw_self()

	if (active = ACTIVITY_STATUS.TRUE)
	{
		draw_ellipse(x + sprite_width, y + 6, x + sprite_width + 12 * ds_list_size(request), y - 6, false)

		for (i = 0; i < ds_list_size(request); i += 1)
		{
			draw_text(x + sprite_width + 1 + (6 * i), y, ds_list_find_index(request, i))
		}
}
}

