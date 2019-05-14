///@arg skill name

var skill_name = argument0;

switch(skill_name)
{
	case "slash":
		set_state_sprite(s_knight_slash,0.7,0);
		if animation_frame_at(4)
		{
			create_hitbox(x,y,self,s_knight_slash_hitbox,image_xscale,10,self.strength,10,1,20,8,8,1);
		}
		break;
		
	case "strike":
		set_state_sprite(s_knight_strike,0.7,0);
		if animation_frame_at(4) or animation_frame_at(6) or animation_frame_at(8) or animation_frame_at(10) or animation_frame_at(12) or animation_frame_at(14) 
		{
			create_hitbox(x,y,self,s_knight_slash_hitbox,image_xscale,10,self.strength,10,1,10,8,8,1);
		}
				
		if animation_frame_at(18)
		{
			create_hitbox(x,y,self,s_knight_slash_hitbox,image_xscale,20,self.strength,10,1,20,12,8,1);
		}
		
		if animation_frame_at(19)
		{
			create_hitbox(x,y,self,s_knight_slash_hitbox,image_xscale,20,self.strength,10,1,10,8,8,1);
		}
		
		break;
		
}