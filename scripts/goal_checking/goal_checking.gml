function goal_checking() {
	var _f = function (el, index) {
		return el.color == global.current_match_color;
	}
							
	var is_goal = array_find_index(global.level_data.goals, _f);
				
	if (is_goal != -1) {
		var goal_id = array_find_index(global.goals, function(el, index) {
			return el.name == global.current_match_color;
		});
		if (global.goals[goal_id].count > 0) {
			global.goals[goal_id].count --;
		}
	}
}