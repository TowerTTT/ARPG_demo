///@arg move_index

var _move_index = argument0;

switch(_move_index)
{
	case "slash":
		set_state_sprite(s_player_slash,0.7,0);
		if animation_frame_at(0)
		{
			audio_play_sound(snd_slash,random_range(3,4),false);
		}
		break;
		
	case "chop":
		set_state_sprite(s_player_chop,0.7,0);
		if animation_frame_at(0)
		{
			audio_play_sound(snd_chop,random_range(3,4),false);
		}
		break;
		
	case "stab":
		set_state_sprite(s_player_stab,0.7,0);
		if animation_frame_at(0)
		{
			audio_play_sound(snd_stab,random_range(3,4),false);
		}
		break;
		
}