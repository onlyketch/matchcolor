is_dragged = false;

if (y_limit) {
	used = true;
	coords = get_target_coords(global.colls);
	target_x = coords.x;
	target_y = coords.y;
	move_towards_point(target_x, target_y, fly_speed);
	global.unselect_all();
}
