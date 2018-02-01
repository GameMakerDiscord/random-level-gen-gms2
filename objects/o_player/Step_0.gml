var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

x_speed_ += _x_input * acceleration_;
y_speed_ += _y_input * acceleration_;
var _speed = point_distance(0, 0, x_speed_, y_speed_);
var _direction = point_direction(0, 0, x_speed_, y_speed_);
if (_speed > max_speed_) {
	x_speed_ = lengthdir_x(max_speed_, _direction);
	y_speed_ = lengthdir_y(max_speed_, _direction);
}

if (_x_input == 0) {
	x_speed_ = lerp(x_speed_, 0, .3);
}
if (_y_input == 0) {
	y_speed_ = lerp(y_speed_, 0, .3);
}

if (_x_input == 0 && _y_input == 0) {
	image_speed = 0;
	image_index = 0;
} else {
	image_speed = .7;	
}

if (x_speed_ > 0) {
	image_xscale = 1;	
} else if (x_speed_ < 0) {
	image_xscale = -1;	
}

// Move horizontally
x += x_speed_;

// Right collisions
if x_speed_ > 0 {
	if (grid_place_meeting(self, o_level.grid_)) {
		x = bbox_right&~(CELL_WIDTH-1);
		x -= bbox_right-x;
		x_speed_ = 0;
	}
} else if x_speed_ < 0 {
	// Left collisions
	if (grid_place_meeting(self, o_level.grid_)) {
		x = bbox_left&~(CELL_WIDTH-1);
		x += CELL_WIDTH+x-bbox_left;
		x_speed_ = 0;
	}
}

// Move vertically
y += y_speed_;

// Vertical collisions
if y_speed_ > 0 {
	// Bottom collisions
	if (grid_place_meeting(self, o_level.grid_)) {
		y = bbox_bottom&~(CELL_HEIGHT-1);
		y -= bbox_bottom-y;
		y_speed_ = 0;
	}
} else if y_speed_ < 0 {
	// Top collisions
	if (grid_place_meeting(self, o_level.grid_)) {
		y = bbox_top&~(CELL_HEIGHT-1);
		y += CELL_HEIGHT+y-bbox_top;
		y_speed_ = 0;
	}
}
