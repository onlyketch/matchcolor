function get_target_coords(arr) {
	var selected_id = array_find_index(arr, function(el, index) {
		return el.state == "selected";
	});
	var empty_cell_id = array_find_index(arr[selected_id].cells, function(el, index) {
		return el.state == "empty";
	});
	var target_x = arr[selected_id].cells[empty_cell_id].x + 10;
	var target_y = arr[selected_id].cells[empty_cell_id].y + 10;
	return { x: target_x, y: target_y, coll_id: selected_id, cell_id: empty_cell_id };
}