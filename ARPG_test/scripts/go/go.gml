///@arg sprite_index
///@arg speed_factory
///@arg walk_speed_factory
///@arg walk_speed
///@arg walk_direction

var _sprite_index = argument0;			// 动画
var _speed_factory = argument1;			// 全局速度系数
var _walk_speed_factory = argument2;	// 速度系数
var _walk_speed = argument3;			// 行走速度
var _walk_direction = argument4;		// true 为左 ， false 为右


if _walk_direction
{
	move_to(- _speed_factory * _walk_speed_factory * _walk_speed,0);
	image_xscale = -1;
	sprite_index = _sprite_index;
	image_speed = 0.6;
}
else
{
	move_to(_speed_factory * _walk_speed_factory * _walk_speed,0);
	image_xscale = 1;
	sprite_index = _sprite_index;
	image_speed = 0.6;
}

// 在第 3 帧的时候播放脚步声
if animation_frame_at(2) or animation_frame_at(5)
{
	audio_play_sound(snd_footstep, 2, false);
}