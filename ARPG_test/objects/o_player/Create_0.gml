event_inherited();

/*	+-----------------------------------------+	
	|				  状态变量				  |	
	+-----------------------------------------+	*/
#region State Variable

/* -------------------- 等级 -------------------- */
level = 1;						// 等级


/* -------------------- 血量 -------------------- */
max_hp = 100;					// 血量上限
hp = max_hp;					// 血量


/* -------------------- 平衡 -------------------- */
max_bp = 100;					// 平衡上限
bp = max_bp;					// 平衡


/* -------------------- 力量 -------------------- */
strength = 15;					// 力量
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
walk_speed = 3;					// 行走速度
roll_speed_factory = 1;			// 翻滚速度系数
roll_speed = 4;					// 翻滚速度
defend_speed_factory = 1;		// 防御速度系数
defend_speed = 1;				// 防御速度
dodge_speed_factory = 1;		// 闪避速度系数
dodge_speed = 3;				// 闪避速度




/* -------------------- 平衡 -------------------- */
bp_recover = 0.5;					// 每帧平衡恢复
bp_recover_time = 180;			// 需要静止才可以开始恢复平衡的帧数




/* ------------------ 永久buff ------------------ */
perm_buff = ds_map_create();	// 角色拥有的永久性buff，只有特定条件才能解除



/* ------------------ 临时buff ------------------ */
temp_buff = ds_map_create();	// 角色拥有的临时性buff，时间到了就会解除



/* -------------------- 技能 -------------------- */
char_skill = ds_map_create();	// 角色拥有的技能
skill_order = ds_list_create();	// 配置攻击招式
skill_motor_count = 0;			// 技能段数计数
skill_order_max = 3;			// 最长攻击段数
ds_list_add(skill_order,1);
ds_list_add(skill_order,2);
ds_list_add(skill_order,3);



/* -------------------- 拥有 -------------------- */
drop_item = ds_map_create();	// 物品掉落
experience = 0;					// 经验
max_experience = 20;			// 经验上限
money = 0;						// 金钱
//max_money = 100;				// 金钱上限
drug = 0;


/* -------------------- 状态 -------------------- */
state = "move";					// 行为状态
invincible = false;				// 无敌

#endregion

/*	+-----------------------------------------+	
	|				  角色参数		          |
	+-----------------------------------------+	*/
#region Char Para

char_id = 1;					// ID
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

#endregion

/*	+-----------------------------------------+	
	|				  瞬时变量			      |	
	+-----------------------------------------+	*/
#region Instantaneous variable

hp_damage = 0;					// 生命损伤
bp_damage = 0;					// 平衡损失
is_char_hit = false;			// 是否击中目标
killed_count = false;			// 是否杀了角色

executable = false;

cover_combo = 0;				// 连击中被弹刀的次数
is_cover_combo = false;			// 连击中被弹刀的开关

executable_enemys = ds_list_create();

#endregion

/*	+-----------------------------------------+	
	|				  全局管理器			      |	
	+-----------------------------------------+	*/
#region Global Manager

Manager = o_game_manager;
input = o_input;

#endregion

/*	+-----------------------------------------+	
	|					  方法 			      |
	+-----------------------------------------+	*/
#region Fuction

character_generate(char_id);

#endregion