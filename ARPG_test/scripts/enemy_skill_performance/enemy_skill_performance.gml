///@arg skill name

var skill_name = argument0;

switch(skill_name)
{
	case "slash":
		if animation_frame_at(4)
		{
			audio_play_sound(snd_slash,random_range(3,4),false);
		}
		break;
		
	case "strike":
		if animation_frame_at(4) or animation_frame_at(8) or animation_frame_at(12)
		{
			audio_play_sound(snd_slash,1,false);
		}
		
		if animation_frame_at(6) or animation_frame_at(10) or animation_frame_at(14) 
		{
			audio_play_sound(snd_stab,1,false);
		}
				
		if animation_frame_at(18)
		{
			audio_play_sound(snd_slash,6,false);
		}
		
		break;
		
}