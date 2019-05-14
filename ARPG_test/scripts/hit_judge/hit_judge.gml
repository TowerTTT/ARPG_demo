///@arg creator
///@arg sufferer
///@arg hp_damage
///@arg bp_damage
///@arg effect
///@arg effect_intensity
///@arg shake_intensity
///@arg shake_duration

/*	+-----------------------------------------+	
	|				  脚本参数		          |
	+-----------------------------------------+	*/

var creator = argument0;
var suffer = argument1;
var hp_damage = argument2;
var bp_damage = argument3;
var effect = argument4;
var effect_intensity = argument5;
var shake_intensity = argument6;
var shake_duration = argument7;


/* -------------------- 血量 -------------------- */

suffer.hp_damage = hp_damage;


/* -------------------- 平衡 -------------------- */

suffer.bp_damage = bp_damage;

/* -------------------- 击退 -------------------- */

if creator.strength > suffer.strength
{
	probability = 100 * ( creator.strength - suffer.strength ) / creator.strength;
	if probability >random(100)
	{
		suffer.state = "knockback";
		suffer.knockback_speed = 2 * suffer_knockback_degree * suffer_knockback_dist;
	}
}

/* -------------------- 特效 -------------------- */

hit_effect(effect,effect_intensity)

/* -------------------- 震屏 -------------------- */

screen_shake(shake_intensity/2,shake_duration/2);

/* -------------------- 红屏 -------------------- */

if suffer.object_index == player
injured_screen(hp_damage / suffer.hp);

/* -------------------- 音效 -------------------- */

play_hit_sound(creator,suffer);