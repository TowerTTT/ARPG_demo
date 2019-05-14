///@arg sprite
///@arg speed_factory
///@arg roll_speed_factory
///@arg roll_speed
///@arg roll_direction

var _sprite_index = argument0;			// 动画
var _speed_factory = argument1;			// 全局速度系数
var _roll_speed_factory = argument2;	// 速度系数
var _roll_speed = argument3;			// 行走速度
var _roll_direction = argument4;		// 翻滚方向

// 状态动画
set_state_sprite(_sprite_index,0.7,0);

// 位移
move_to(_roll_direction * _speed_factory * _roll_speed_factory * _roll_speed,0);

