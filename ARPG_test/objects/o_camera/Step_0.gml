// 摄像机位置，如果震动强度为0，则镜头无晃动
x += random_range(-screenshake, screenshake);
y += random_range(-screenshake, screenshake);

// 如果玩家存在
if not instance_exists(o_player) exit;

// 摄像机产生位移后，需要恢复的位置
var target_x = o_player.x ;
var target_y = o_player.y - 48;

// 平滑震动路径
x = lerp(x, target_x, 0.3);
y = lerp(y, target_y, 0.3);

// 把计算出来的摄像机位置应用
camera_set_view_pos(view_camera[0], x - width/2, y - height/2);