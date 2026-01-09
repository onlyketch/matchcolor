global.game_data = {
	level: 1,
	highscore: 0,
	attempts: 3,
	cell_step: 40,
	count_arrays: 5,
	cell_count_in_array: 7,
	start_pos: {x: 80, y: 120},
	drag_min_y: 430,
	select_cols_point: [120, 160, 200, 240, 280],
	left_bound: 80,
	right_bound: 280,
}

randomise();

collection = [[0], [0, 1], [0, 1, 2], [0, 1], [0]];

global.colls = [
	{
		cells: [],
		state: "unselected",
		select: function() {
			show_debug_message("Массив 1 выбран!");
		}
	},
	{
		cells: [],
		state: "unselected"
	},
	{
		cells: [],
		state: "unselected"
	},
	{
		cells: [],
		state: "unselected"
	},
	{
		cells: [],
		state: "unselected"
	}
];


states = ["empty","yellow", "pink", "green", "white", "red"];

x_pos = global.game_data.start_pos.x;
y_pos = global.game_data.start_pos.y;


function create_cells() {
	
	for (var i = 0; i < global.game_data.count_arrays; i++) {
		for (var j = 0; j < global.game_data.cell_count_in_array; j++) {
			array_push(global.colls[i].cells, instance_create_layer(x_pos, y_pos, "Instances", obj_cell));
			y_pos += global.game_data.cell_step;
		}
		y_pos = global.game_data.start_pos.y;
		x_pos += global.game_data.cell_step;
	}
	
}

function create_level() {
	var color_index = irandom_range(1, 5);
	
	for (var i = 0; i < array_length(global.colls); i++) {
		for (var j = 0; j < array_length(collection[i]); j++) {
			global.colls[i].cells[collection[i][j]].state = states[color_index];
			if (color_index < 5) {
				color_index++;
			} else {
				color_index = 1;
			}
		}
	}
	
}

create_cells();
create_level();

instance_create_layer(130, 452, "Instances", obj_pink);


