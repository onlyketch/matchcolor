if (is_dragged) {
	var new_x = mouse_x + click_offset_x;
  var new_y = mouse_y + click_offset_y;
	
	if (new_y < y && !y_limit) {
		y = new_y;
	}
	if (new_x > global.game_data.left_bound && new_x < global.game_data.right_bound - sprite_width) {
		x = new_x;
	}
	
if (y_limit) {
		if (new_x <= check_point1) {
		if (global.colls[0].state == "unselected") {
			global.unselect_all();
			global.colls[0].state = "selected";
			global.coll_select_funcs[0]();
		}
	}
	
	if (new_x > check_point1 && new_x <= check_point2) {
	  if (global.colls[1].state == "unselected") {
			global.unselect_all();
			global.colls[1].state = "selected";
			global.coll_select_funcs[1]();
		}
	}
	
	if (new_x > check_point2 && new_x <= check_point3) {
		if (global.colls[2].state == "unselected") {
			global.unselect_all();
			global.colls[2].state = "selected";
			global.coll_select_funcs[2]();
		}
	}
	
	if (new_x > check_point3 && new_x <= check_point4) {
		if (global.colls[3].state == "unselected") {
			global.unselect_all();
			global.colls[3].state = "selected";
			global.coll_select_funcs[3]();
		}
	}
	
	if (new_x > check_point4) {
		if (global.colls[4].state == "unselected") {
			global.unselect_all();
			global.colls[4].state = "selected";
			global.coll_select_funcs[4]();
		}
	}
}

}
	
if (point_distance(x, y, target_x, target_y) <= fly_speed) {
	//x = target_x;
	//y = target_y;
	//speed = 0;
	instance_destroy();
	global.colls[coords.coll_id].cells[coords.cell_id].state = color;
}	