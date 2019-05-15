///@arg frame_low
///@arg frame_high

var frame_low = argument0;
var frame_high = argument1;

if animation_frame_between(frame_low-1,frame_high-1)
{
	if input.attack
	{
		skill_motor_count++;
		
		if skill_motor_count >= skill_order_max
		{
			skill_motor_count = 0;
		}
	}
}



if animation_end()
{
	skill_motor_count = 0;	
}