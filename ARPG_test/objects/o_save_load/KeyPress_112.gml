var _root_list = ds_list_create();

var _map = ds_map_create();
ds_list_add(_root_list,_map);
ds_list_mark_as_map(_root_list,ds_list_size(_root_list)-1);
	
var _player = object_get_name(player.object_index);
ds_map_add(_map,"player",_player);
ds_map_add(_map,"drug",player.drug);
ds_map_add(_map,"x",player.x);
ds_map_add(_map,"y",player.y );

var _wrapper = ds_map_create();
ds_map_add_list(_wrapper,"root",_root_list);

var _string = json_encode(_wrapper);
save_string_to_file("savedgame.sav",_string);

ds_map_destroy(_wrapper);

show_debug_message("Game saved!");