function get_last_arr_coords(arr) {
	var last_coll_id = array_length(arr) - 1;
	var empty_cell_id = array_find_index(arr[last_coll_id].cells, function(el, index) {
		return el.state == "empty";
	});
	var target_x = arr[last_coll_id].cells[empty_cell_id].x + 10;
	var target_y = arr[last_coll_id].cells[empty_cell_id].y + 10;
	return { x: target_x, y: target_y, coll_id: last_coll_id, cell_id: empty_cell_id}
}