switch(state)
{
	// 移动
	case "move":
		#region Move State
		
		// 向左移动
		if input.left
		{
			#region move left
			
			go(s_player_walk,speed_factory,walk_speed_factory,walk_speed,true);
			
			#endregion
		}
		
		// 向右移动
		if input.right
		{
			#region move right
			
			go(s_player_walk,speed_factory,walk_speed_factory,walk_speed,false);
			
			#endregion
		}
		
		// 当左右都按了或者都没有按的时候，待机
		if (input.left and input.right) or (not input.left and not input.right)
		{
			set_state_sprite(s_player_idle,1,0);
		}
		
		
		
		// 按下 空格 的时候，状态变为翻滚
		if input.roll
		{
			#region Roll Judge
			state = "roll";
			#endregion
		}
		
		// 按下 J 的时候，状态变为攻击
		if input.attack
		{
			#region Attack Judge
			attack_detect();
			state = "attack";
			#endregion
		}
		
		// 按下 K 的时候，状态变为格挡
		if input.cover
		{
			#region Cove Judge
		    state = "cover";
			#endregion
		}
		

		
		// 按下	L 的时候，状态变为闪避
		if input.dodge
		{
			#region Dodge Judge
			
			forward_dodge = false;

			if input.left or input.right
			{		
				forward_dodge = true;
			}
			else
			{
				forward_dodge = false;
			}
			
			state = "dodge";
			
			#endregion
		}
		
		
		#endregion
		break;
		
	// 翻滚
	case "roll":
		#region Roll State
		roll_to(s_player_roll,speed_factory,roll_speed_factory,roll_speed,image_xscale);
		
		if animation_end()
		{
			// 按住 K 的时候，状态变为格挡
			if input.defend
			{
				#region Cove Judge
			    state = "defend";
				#endregion
			}
			else
			{
				state = "move";
			}			
		}
		
		#endregion
		break;
	
	// 弹刀
	case "cover":
		#region Cover State
		
		to_cover();
		
		if input.left or input.right
		{
			#region Roll Judge
		    
			#endregion
		}
		
		// 按下 空格 的时候，状态变为翻滚
		if input.roll
		{
			#region Roll Judge
			state = "roll";
			#endregion
		}
		
		// 按下	L 的时候，状态变为闪避
		if input.dodge
		{
			#region Dodge Judge
			state = "dodge";
			#endregion
		}
		
		//if is_cover_combo
		//{
		//	set_state_sprite(s_player_cover_continus,0.7,0);
		//	is_cover_combo = false;
		//}
		
		if animation_end()
		{
			state = "defend";
		}
		
		#endregion
		break;
		
	// 防御
	case "defend":
		#region Defend State
				// 向左移动
		if input.left
		{
			#region move left
			
			go(s_player_defend_walk,speed_factory,defend_speed_factory,defend_speed,true);
			
			#endregion
		}
		
		// 向右移动
		if input.right
		{
			#region move right
			
			go(s_player_defend_walk,speed_factory,defend_speed_factory,defend_speed,false);
			
			#endregion
		}
		
		// 当左右都按了或者都没有按的时候，待机
		if (input.left and input.right) or (not input.left and not input.right)
		{
			sprite_index = s_player_defend_idle;
		}
		
		// 按下 J 的时候，状态变为攻击
		if input.attack
		{
			#region attack Judge
		    state = "attack";
			#endregion
		}
		
		// 按下 空格 的时候，状态变为翻滚
		if input.roll
		{
			#region Roll Judge
			state = "roll";
			#endregion
		}
		
		// 当松开 K 的时候,状态转为普通
		if input.take_off_cover or !keyboard_check(ord("K"))
		{
			state = "move";
		} 
		
		#endregion
		break;
		
	// 闪避
	case "dodge":
		#region Dodge State
		
			// 闪避
			dodge_to();
			
			if animation_end()
			{
				state = "move";
			}
			
		#endregion
		break;
		
	// 攻击
	case "attack":
		#region Attack state
		
		if skill_motor_count < skill_order_max
		{
			player_skill_impact(skill_order[|skill_motor_count]);
		}
		
		
		
		// 按下 空格 的时候，状态变为翻滚
		if input.roll
		{
			#region Roll Judge
			state = "roll";
			#endregion
		}
		
		if animation_end()
		{
			attack_detect();
			state = "move";
		}
		
		#endregion
		break;
		
	// 被击退 - 硬直
	case "konckback":
		#region konckback State
		
		#endregion
		break;
	
	// 处决敌人
	case "executing":
		#region excuting State
		
		player_skill_impact(4);
		
		if animation_end()
		{
			state = "move";
		}
		
		#endregion
		break;
		
	// 濒死
	case "dying":
		#region dying State
		
		#endregion
		break;
		
	// 死亡
	case "death":
		#region death State
		
		#endregion
		break;

	// 报错
	default:
		show_debug_message("player state " + state + "dose not exist");
		break;
}

