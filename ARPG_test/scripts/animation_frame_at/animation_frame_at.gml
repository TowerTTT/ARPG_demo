///@arg frame
///@description 检测动画播放帧数的方法，当播放到第 frame 帧的时候 返回真
var frame = argument0;
var frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
return image_index >= frame and image_index < frame + frame_range;