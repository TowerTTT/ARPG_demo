if not instance_exists(o_player) exit;
		
image_xscale = sign(o_player.x - x);
		
if image_xscale == 0
{
	image_xscale = 1;
}
		
var direction_facing = image_xscale;

move_to(direction_facing * speed_factory * walk_speed_factory * walk_speed,0);