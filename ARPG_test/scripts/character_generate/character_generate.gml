///@arg char_id

var _char_id = argument0;

_all_char_info = Manager.all_char_info;

if not ds_grid_value_exists(_all_char_info,0,1,0,ds_grid_height(_all_char_info),string(_char_id))
{
	show_debug_message("finding value does not exist");
	exit;
}
else
{
	char_name		= _all_char_info[# 1,_char_id];
	char_label		= _all_char_info[# 2,_char_id];
	level			= int64(_all_char_info[# 3,_char_id]);
	char_title		= _all_char_info[# 4,_char_id];
	race			= _all_char_info[# 5,_char_id];
	occupation		= _all_char_info[# 6,_char_id];
	class			= _all_char_info[# 7,_char_id];
	//goodness		= int64(_all_char_info[# _char_id,8]);
	//reputation		= int64(_all_char_info[# _char_id,9]);
	//kill			= int64(_all_char_info[# _char_id,10]);
	//relationship	= int64(_all_char_info[# _char_id,11]);
	//alert			= int64(_all_char_info[# _char_id,12]);
}


