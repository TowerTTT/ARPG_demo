/* 	+-------------------------------+
	|								|
	|			 攻击碰撞			|
	|		    2019/05/11			|
	|								|
	+-------------------------------+	*/

/*
这是所有攻击都会创建的攻击碰撞，用于判定是否击中，以及击中后要产生什么效果
*/

/*	+-------------------------------+	
	|			  创建者			|	
	+-------------------------------+	*/
creator = noone;				// 创建者，初始值为noone
creator_hp_damage_degree = 1;	// 创建者受到的生命伤害系数
creator_hp_damage = 0;			// 创建者受到的生命伤害
creator_bp_damage_degree = 1;	// 创建者受到的平衡损失系数
creator_bp_damage = 0;			// 创建者受到的平衡损失
creator_bp_damage_degree = 1;	// 创建者受到的平衡损失系数
creator_bp_damage = 0;			// 创建者受到的平衡损失
creator_knockback_degree = 1;	// 创建者受到的击退系数
creator_knockback_dist = 0;		// 创建者受到的击退距离

/*	+-------------------------------+	
	|			  受击者			|	
	+-------------------------------+	*/
suffer = noone;					// 受击者 ，初始值为noone
suffer_hp_damage_degree = 1;	// 受击者受到的生命伤害系数
suffer_hp_damage = 0;			// 受击者受到的生命伤害
suffer_bp_damage_degree = 1;	// 受击者受到的平衡损失系数
suffer_bp_damage = 0;			// 受击者受到的平衡损失
suffer_knockback_degree = 1;	// 受击者受到的击退系数
suffer_knockback_dist = 0;		// 受击者受到的击退距离
hit_objects = ds_list_create();	// 已击中目标（避免二次伤害）


/*	+-------------------------------+	
	|			   玩家				|	
	+-------------------------------+	*/
player = o_player;				// 玩家对象，用于非指定玩家为受击者或者创建者但要对玩家造成影响时使用
player_hp_damage_degree = 1;	// 玩家受到的生命伤害系数
player_hp_damage = 0;			// 玩家受到的生命伤害
player_bp_damage_degree = 1;	// 玩家受到的平衡损失系数
player_knockback_degree = 1;	// 玩家受到的击退系数
player_knockback_dist = 0;		// 玩家受到的击退距离
player_bp_damage = 0;			// 玩家受到的平衡损失

/*	+-------------------------------+	
	|			   	特效			|	
	+-------------------------------+	*/
effect = 1;						// 特效种类
intensity = 1;					// 特效强度
shake = 0;						// 屏幕震动强度
duration = 0;					// 屏幕震动持续帧时长

/*	+-------------------------------+	
	|			全局管理器			|	
	+-------------------------------+	*/
input = o_input;
all_enemy = o_all_enemy;
