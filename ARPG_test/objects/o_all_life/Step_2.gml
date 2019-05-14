if hp_damage != 0
{
	if hp < hp_damage
	{
		hp = 0;
	}
	else
	{
		hp -= hp_damage;
	}

	hp_damage = 0;
}

if bp_damage != 0
{
	if bp < bp_damage
	{
		bp = 0;
	}
	else
	{
		bp -= bp_damage;
	}

	bp_damage = 0;
	
	bp_is_recover = false;
	
	alarm[0] = bp_recover_time;
}

if bp_is_recover 
{
	bp += bp_recover;
	
	if bp = max_bp
	{
		bp_is_recover = false;
	}
}

//value_control(hp,0,max_hp);
//value_control(bp,0,max_bp);