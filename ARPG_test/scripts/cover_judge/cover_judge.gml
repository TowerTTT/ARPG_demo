///@arg creator
///@arg sufferer
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
var bp_damage = argument2;
var effect = argument3;
var effect_intensity = argument4;
var shake_intensity = argument5;
var shake_duration = argument6;

/* -------------------- 平衡 -------------------- */

creator.bp_damage = bp_damage;
suffer.bp_damage = creator.strength*0.25;

/* -------------------- 特效 -------------------- */

hit_effect(effect,effect_intensity)

/* -------------------- 震屏 -------------------- */

screen_shake(shake_intensity/2,shake_duration/2);

/* -------------------- 音效 -------------------- */

cover_sound = choose(snd_sword_hit_low,snd_sword_hit_normal);
audio_play_sound(cover_sound,0,false);

/* --------------------额外 -------------------- */
suffer.is_cover_combo = true;
image_speed = 0;
if image_index <= 5
{
	image_index++;
}
else
{
	image_index = 0;
}
