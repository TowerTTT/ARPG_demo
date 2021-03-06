event_inherited();

/* 	+-------------------------------+
	|								|
	|		角色模板 - 初始模板		|
	|			2019/5/6			|
	|								|
	+-------------------------------+	*/

/*
这是所有生命对象的父级，包含了生命对象的一些基本属性。
*/

/*	+-------------------------------+	
	|			  对象 				|
	+-------------------------------+	*/
player = o_player;

 
/*	+-------------------------------+	
	|			状态变量			|	
	+-------------------------------+	*/

/* -------------------- 等级 -------------------- */
level = 1;						// 等级


/* -------------------- 血量 -------------------- */
max_hp = 100;					// 血量上限
hp = max_hp;					// 血量


/* -------------------- 平衡 -------------------- */
max_bp = 100;					// 平衡上限
bp = max_bp;					// 平衡


/* -------------------- 力量 -------------------- */
strength = 1;					// 力量
strength_factory = 1;			// 力量系数
strength_char = 0;				// 角色自身的额外力量



/* -------------------- 智慧 -------------------- */
wisdom = 1;						// 智慧
wisdom_factory = 1;				// 智慧系数
wisdom_char = 0;				// 角色自身的额外智慧



/* -------------------- 洞察 -------------------- */
observation = 1;				// 洞察
observation_factory = 1;		// 洞察系数
observation_char = 0;			// 角色自身的额外洞察



/* -------------------- 速度 -------------------- */
speed_factory = 1;				// 总速度系数
walk_speed_factory = 1;			// 行走速度系数
walk_speed = 1;					// 行走速度
roll_speed_factory = 1;			// 翻滚速度系数
roll_speed = 1;					// 翻滚速度



/* -------------------- 平衡 -------------------- */
bp_recover = 1;					// 每帧平衡恢复
bp_recover_time = 180;			// 需要静止才可以开始恢复平衡的帧数




/* ------------------ 永久buff ------------------ */
perm_buff = ds_map_create();	// 角色拥有的永久性buff，只有特定条件才能解除



/* ------------------ 临时buff ------------------ */
temp_buff = ds_map_create();	// 角色拥有的临时性buff，时间到了就会解除



/* -------------------- 技能 -------------------- */
char_skill = ds_map_create();	// 角色拥有的技能



/* -------------------- 拥有 -------------------- */
drop_item = ds_map_create();	// 物品掉落



/* -------------------- 状态 -------------------- */
state = "move";					// 行为状态
invincible = false;				// 无敌



/*	+-------------------------------+
	|			角色参数			|
	+-------------------------------+	*/

char_id = 2;					// ID
char_label = ""					// 角色标签 
char_title = ""					// 角色称号
char_name = "defuat name";		// 名称
race = "human";					// 种族
occupation = "warrior";			// 职业
class = "primer";				// 职阶
goodness = 0;					// 善恶
reputation = 0 ;				// 声望
kill = 0;						// 杀戮
relationship = 0;				// 好感
alert = 0;						// 戒备

/*	+-------------------------------+	
	|			瞬时变量			|	
	+-------------------------------+	*/

hp_damage = 0;					// 生命损伤
bp_damage = 0;					// 平衡损失
knockback_distance = 0;			// 击退距离
is_char_hit = false;			// 是否击中目标
killed_count = false;			// 是否杀了角色

is_executable = false;			// 是否可以被处决
is_being_executed = false;		// 是否被处决

rebound_combo = 0;				// 连击中被弹刀的次数


/*	+-------------------------------+	
	|			全局管理器			|	
	+-------------------------------+	*/
	
Manager = o_game_manager;

/*	+-------------------------------+	
	|			   方法 			|
	+-------------------------------+	*/
#region Fuction

character_generate(char_id);

show_debug_message(self);

#endregion

/*	+-------------------------------+	
	|			   AI 				|
	+-------------------------------+	*/
#region AI

chase_range = 150;
attack_range = 25;

#endregion