event_inherited();

if bp <= 0
{
	bp_is_recover = true;
	
	state = "losebalance";
}

if hp <= 0
{
	state = "death";
}