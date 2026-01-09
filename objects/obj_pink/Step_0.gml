if (is_dragged) {
	var new_x = mouse_x + click_offset_x;
  var new_y = mouse_y + click_offset_y;
	
	if (new_y < y && new_y > global.game_data.drag_min_y) {
		y = new_y;
	}
	if (new_x > global.game_data.left_bound && new_x < global.game_data.right_bound - sprite_width) {
		x = new_x;
	}
	
	if (new_x <= check_point1) {
		if (global.colls[0].state == "unselected") {
			global.colls[0].state = "selected";
			global.colls[0].select();
		}
	}

}