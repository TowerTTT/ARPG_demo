if forward_dodge
{
	set_state_sprite(s_player_dodge_forward,1,0);
	move_to(image_xscale * speed_factory*dodge_speed_factory*dodge_speed,0);
}
else
{
	set_state_sprite(s_player_dodge_back,1,0);
	move_to(-image_xscale * speed_factory*dodge_speed_factory*dodge_speed,0);
}