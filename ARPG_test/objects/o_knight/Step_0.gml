switch(state)
{
	#region enemy's suffer state
			
	case "move":
		#region enemy's move state
		
		if distance_to_object(player) > chase_range
		{
			set_state_sprite(s_knight_idle,0.5,0);
		}
		else if distance_to_object(player) <= chase_range and distance_to_object(player) > attack_range
		{
			set_state_sprite(s_knight_walk,0.5,0);
			chase_player();
		}
		else if distance_to_object(player) <= attack_range
		{
			chase_player();
			//state = "attack";
		}
		
		#endregion
		break;
			
	case "attack":
		#region enemy's attack state
		
		current_skill = "strike";
		
		enemy_skill_performance(current_skill);
		
		if distance_to_object(player) <= attack_range
		{
			enemy_skill_impact(current_skill);
		}
		
		if animation_end()
		{
			state = "move";
		}
		
		#endregion
		break;
			
	case "knockback":
		#region enemy's knockback state
		knockbacked(s_knight_knockback,"move");
		#endregion
		break;
				
	case "losebalance":
		#region enemy's losebalance state
		lose_balance(s_knight_lose_balance);
		
		if animation_end()
		{
			ds_list_delete(player.executable_enemys,ds_list_find_index(player.executable_enemys,self));
			state = "move";
		}
		
		#endregion
		break;
				
	case "executed":
		#region enemy's executed state
		
		if ds_list_find_index(player.executable_enemys,self) != -1
		{
			ds_list_delete(player.executable_enemys,ds_list_find_index(player.executable_enemys,self));
		}
				
		set_state_sprite(s_knight_executed,1,0);
		
		if animation_end()
		{
			state = "death";
		}
		#endregion
		break;
				
	case "stagger":
		#region enemy's stagger state
		set_state_sprite(s_knight_stagger,1,0);
		if animation_end()
		{
			state = "move";
		}
		#endregion
		break;
				
	case "death":
		#region enemy's death state
		
		image_index = image_number - 1;
		
		object_set_mask(self.object_index,noone);
		
		#endregion
		break;
				
	default:
		show_debug_message("enemy state " + state + "dose not exist");
		break;
	#endregion
}