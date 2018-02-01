if not instance_exists(target_) exit;
x = lerp(x, target_.x, .1);
y = lerp(y, target_.y-8, .1);
x = round_n(x, scale_);
y = round_n(y, scale_);
x = clamp(x, width_/2 + CELL_WIDTH, room_width-width_/2 - CELL_WIDTH);
y = clamp(y, height_/2 + CELL_HEIGHT, room_height-height_/2 - CELL_HEIGHT);
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);

