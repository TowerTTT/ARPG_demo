///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg xscale
///@arg hp_damage
///@arg bp_damage
///@arg knockback
///@arg effect
///@arg intensity
///@arg shake
///@arg duration
///@arg lifespan

var x_postion	= argument0;	// 需要创建位置的x坐标
var y_positon	= argument1;	// 需要创建位置的y坐标
var creator		= argument2;	// 创建者对象
var sprite		= argument3;	// 攻击判定用的碰撞体的精灵
var xscale		= argument4;	// 碰撞体的方向
var hp_damage	= argument5;	// 本次攻击对受击者造成的生命伤害
var bp_damage	= argument6;	// 本次攻击对受击者造成的平衡损失
var knockback	= argument7;	// 本次攻击对受击者造成的击退距离
var effect		= argument8;	// 特效种类
var intensity	= argument9;	// 特效强度
var shake		= argument10;	// 屏幕震动强度
var duration	= argument11;	// 屏幕震动持续帧时长
var lifespan	= argument12;	// 屏幕震动持续帧时长

// 创建碰撞体对象
var hitbox = instance_create_layer(x_postion,y_positon,"Hitbox",o_hitbox);

/*
本次传入hitbox的数值为计算前的数值，也就是忽略一切敌人的抵抗因素所造成的全额伤害
*/

hitbox.creator = creator;
hitbox.sprite_index = sprite;
hitbox.image_xscale = xscale;
hitbox.hp_damage = hp_damage;
hitbox.bp_damage = bp_damage;
hitbox.suffer_knockback_dist = knockback;
hitbox.effect = effect;
hitbox.intensity = intensity;
hitbox.shake = shake;
hitbox.duration = duration;

hitbox.alarm[0] = lifespan;