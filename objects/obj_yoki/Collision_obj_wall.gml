if (!is_dragged) {
	used = true;
	coords = get_last_arr_coords(global.colls);
	target_x = coords.x;
	target_y = coords.y;
	move_towards_point(target_x, target_y, fly_speed);
}