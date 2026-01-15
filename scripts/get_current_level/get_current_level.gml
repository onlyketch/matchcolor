function get_current_level(fname, err_message) {
	var file_name = fname;
	var json_obj;
	
	if (file_exists(file_name)) {
		var buffer = buffer_load(file_name);
		var json_string = buffer_read(buffer, buffer_string);
		buffer_delete(buffer);
		json_obj = json_parse(json_string);
	} else {
		//упс.. что-то пошло не так
		show_debug_message(err_message);	
	}

	var find = function (el, index) {
		return el.id == global.player_data.level;
	}
	
	var current_level_index = array_find_index(json_obj.levels, find);
	
	return json_obj.levels[current_level_index];
}