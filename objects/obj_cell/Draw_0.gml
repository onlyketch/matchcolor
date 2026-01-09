
switch (state) {
	case "empty":
		draw_sprite(spr_cell, selected, x, y);
		break;
	case "yellow":
		draw_sprite(spr_cell, selected, x, y);
		draw_sprite(spr_yellow, 0, x + 10, y + 10);
		break;
	case "pink":
		draw_sprite(spr_cell, selected, x, y);
		draw_sprite(spr_pink, 0, x + 10, y + 10);
		break;
	case "green":
		draw_sprite(spr_cell, selected, x, y);
		draw_sprite(spr_green, 0, x + 10, y + 10);
		break;
	case "white":
		draw_sprite(spr_cell, selected, x, y);
		draw_sprite(spr_white, 0, x + 10, y + 10);
		break;
	case "red":
		draw_sprite(spr_cell, selected, x, y);
		draw_sprite(spr_red, 0, x + 10, y + 10);
		break;
} 