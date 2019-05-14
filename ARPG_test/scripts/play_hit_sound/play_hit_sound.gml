///@arg creator
///@arg sufferer


/*	+-----------------------------------------+	
	|				  脚本参数		          |
	+-----------------------------------------+	*/

var creator = argument0;
var suffer = argument1;

switch(suffer.object_index)
{
	case player:
		audio_play_sound(snd_skeleton,1,false);
		break;
		
	case o_knight:
		audio_play_sound(snd_knight_hit,1,false);
		break;
}