if ds_list_find_index(o_player.executable_enemys,other) == -1 and other.state =="losebalance"
{
	show_debug_message(string(other));
	ds_list_add(o_player.executable_enemys,other);
}