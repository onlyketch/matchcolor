depth = 10;
goal_x_start = x + 20;
goal_y = y + 11;
goal_step = 30;
global.goals = [];
global.moves = global.level_data.moves;

for (var i = 0; i < array_length(global.level_data.goals); i++) {
	var goal = instance_create_layer(goal_x_start, goal_y, "Instances", obj_goal);
	goal.sprite_index = asset_get_index("spr_" + global.level_data.goals[i].color);
	goal.name = global.level_data.goals[i].color;
	goal.count = global.level_data.goals[i].count;
	array_push(global.goals, goal);
	goal_x_start += goal_step;
}
