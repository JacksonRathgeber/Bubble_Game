var _collided_bubble = instance_place(x, y, obj_bubble)

for (i = 0; i < ds_list_size(request_filled); i++)
{
	if (ds_list_find_value(request_filled, i) == false and ds_list_find_value(request, i) == _collided_bubble.ind)
	{
		ds_list_replace(request_filled, i, true)
	}
}

instance_destroy(_collided_bubble)

