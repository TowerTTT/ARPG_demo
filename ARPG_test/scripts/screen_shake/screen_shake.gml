///@arg intensity
///@arg duration
// 震屏效果，intensity震动强度，duration持续时长
var intensity = argument0;
var duration = argument1;

if not instance_exists(o_camera) exit;

with (o_camera)
{
	screenshake = intensity;
	alarm[0] = duration;
}