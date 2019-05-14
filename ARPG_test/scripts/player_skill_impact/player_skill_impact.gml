///@arg skill_id

// 此脚本的伤害为技能的无buff状态下的技能理论伤害。

var skill_id = argument0;

switch(skill_id)
{
	case 1:
		attack_move("slash");
		
		if animation_frame_at(0)
		{
			create_hitbox(x,y,self,s_player_slash_hitbox,image_xscale,10,strength_factory * self.strength,1,1,10,4,4,1);
		}
		
		attack_into_next(2,5);
		
		break;
		
	case 2:
		attack_move("chop");

		if animation_frame_at(0)
		{
			create_hitbox(x,y,self,s_player_chop_hitbox,image_xscale,10,strength_factory * self.strength,1,1,10,4,4,1);
		}

		attack_into_next(2,5);
		
		break;
		
	case 3:
		attack_move("stab");
		
		if animation_frame_at(0)
		{
			create_hitbox(x,y,self,s_player_stab_hitbox,image_xscale,10,strength_factory * self.strength,2,1,10,4,4,1);
		}
		
		attack_into_next(2,5);
		
		break;
		
		
}

