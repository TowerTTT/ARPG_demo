var camera_id = view_camera[0];
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);

display_set_gui_size(view_width,view_height);

if not instance_exists(o_player) exit;

player = o_player;

draw_hp = player.hp;
draw_max_hp = player.max_hp;

draw_bp = player.bp;
draw_max_bp = player.max_bp;

draw_exp = player.experience;
draw_max_exp = player.max_experience;

draw_set_font(f_ui);

