// 把被碰撞到的物体赋值给suffer
suffer = other;

if creator == noone or suffer == noone or creator == suffer or ds_list_find_index(hit_objects,suffer) != -1
{
	
	exit;
}

/*	+-----------------------------------------+	
	|				创建者 = 玩家			  |	
	+-----------------------------------------+	*/
if creator.object_index == player
{
	if object_get_parent(suffer.object_index) == all_enemy
	{show_debug_message("i am attacking");
		switch(suffer.state)
		{
			
			#region enemy's suffer state
			
			case "move":
				#region enemy's move state
				hit_judge(player,suffer,hp_damage,bp_damage,effect,intensity,shake,duration);
				#endregion
				break;
			
			case "attack":
				#region enemy's attack state
				hit_judge(player,suffer,hp_damage,bp_damage,effect,intensity,shake,duration);
				#endregion
				break;
			
			case "knockback":
				#region enemy's knockback state
				hit_judge(player,suffer,hp_damage,bp_damage,effect,intensity,shake,duration);
				#endregion
				break;
				
			case "losebalance":
				#region enemy's losebalance state
				hit_judge(player,suffer,hp_damage,bp_damage,effect,intensity,shake,duration);
				#endregion
				break;
				
			case "executed":
				#region enemy's executed state
				
				#endregion
				break;
				
			case "stagger":
				#region enemy's stagger state
				hit_judge(player,suffer,hp_damage,bp_damage,effect,intensity,shake,duration);
				#endregion
				break;
				
			case "death":
				#region enemy's death state
				
				#endregion
				break;
				
			default:
				show_debug_message("enemy state " + state + "dose not exist");
				break;
			#endregion
		}
	}
}

/*	+-----------------------------------------+	
	|				创建者 = 敌人			  |	
	+-----------------------------------------+	*/
if creator.object_index != player
{
	if suffer.object_index == player
	{
		switch(player.state)
		{
			#region player's suffer state
			
			case "move":
				#region player's move state
				hit_judge(creator,player,hp_damage,bp_damage,effect,intensity,shake,duration);
				#endregion
				break;
			
			case "roll":
				#region player's roll state
				
				#endregion
				break;
			
			case "cover":
				#region player's cover state
				cover_judge(creator,player,player.strength * 4,1,20,32,16);
				#endregion
				break;
				
			case "defend":
				#region player's defend state
				hit_judge(creator,player,0.25 * hp_damage,0.5 * bp_damage,effect,intensity,shake,duration);
				cover_sound = choose(snd_sword_hit_low,snd_sword_hit_normal);
				audio_play_sound(cover_sound,0,false);
				#endregion
				break;
				
			case "dodge":
				#region player's dodge state
				dodge_judge(creator,player,player.strength * 8);
				creator.state = "stagger";
				#endregion
				break;
				
			case "attack":
				#region player's attack state
				hit_judge(creator,player,hp_damage,bp_damage,effect,intensity,shake,duration);
				#endregion
				break;
				
			case "konckback":
				#region player's konckback state
				hit_judge(creator,player,hp_damage,bp_damage,effect,intensity,shake,duration);
				#endregion
				break;
				
			case "excuting":
				#region player's excuting state
				
				#endregion
				break;
				
			case "dying":
				#region player's dying state
				
				#endregion
				break;
				
			// 死亡
			case "death":
				#region player's death State
		
				#endregion
				break;
				
			default:
				//show_debug_message("enemy state " + state + "dose not exist");
				break;
			#endregion
		}
	}
}