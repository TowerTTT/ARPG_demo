with(player)
{
	instance_destroy();
}

if (file_exists("savedgame.sav"))
{
	var _wrapper = load_json_from_file("savedgame.sav");
	var _list = _wrapper[?"root"];
	
	for (var i = 0; i < ds_list_size(_list); i++) 
	{
	    var _map = _list[|i];
		
		var _player = _map[?"player"];
		with(instance_create_layer(0,0,"Player",asset_get_index(_player)))
		{
			x = _map[?"x"];
			y = _map[?"y"];
			drug = _map[?"drug"];
		}
		
	}
}