///@arg knockback_sprite
///@arg next_state

var knockback_sprite = argument0;
var next_state = argument1;

set_state_sprite(knockback_sprite,1,0);

move_to(knockback_speed,0);

knockback_speed = approach(knockback_speed,0,0.3);

if animation_end()
{
	knockback_speed = 5;
	
	state = next_state;
}