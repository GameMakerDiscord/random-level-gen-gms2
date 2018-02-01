target_ = o_player;
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);
scale_ = width_ / view_get_wport(0);
show_debug_message(scale_);

