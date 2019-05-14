///@arg effect_type
///@arg effect_intensity

var effect_type = argument0;
var effect_intensity = argument1;

switch(effect_type)
{
	case 1:
		repeat(effect_intensity)
		{
			instance_create_layer(suffer.x + random_range(-4,4), suffer.y-12 + random_range(-4,4), "Effect", o_hit_effect);
			instance_create_layer(suffer.x + random_range(-4,4), suffer.y-12 + random_range(-4,4), "Effect", o_hit_spark);
		}
		break;
}