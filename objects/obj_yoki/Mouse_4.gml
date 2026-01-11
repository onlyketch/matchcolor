if (position_meeting(mouse_x, mouse_y, id) && !used) {
	is_dragged = true;
	depth = 5;
	click_offset_x = x - mouse_x;
  click_offset_y = y - mouse_y;
}