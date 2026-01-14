function match_cheking(arr, cell_id){
	if (cell_id < 2) return;
	var prev1_cell_id = cell_id - 1;
	var prev2_cell_id = prev1_cell_id - 1;
	
	if (arr[cell_id].state == arr[prev1_cell_id].state && arr[prev1_cell_id].state == arr[prev2_cell_id].state) {
				var _id = cell_id;
				
				repeat (3) {
					arr[_id].state = obj_controller.states[0];
					_id -= 1;
				}
			
	}
}