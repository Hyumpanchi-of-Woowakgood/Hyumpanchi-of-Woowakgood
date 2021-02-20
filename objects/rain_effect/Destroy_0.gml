/// @description Insert description here
// You can write your code in this editor
if ignore_floor = 0
{
if global.l_q_grap = 0
{
	if global.p_floor+27 >= y || (instance_number(died_scene) > 0)
	{
		if instance_number(player) > 0
		{
		var depth_ = player.depth
		}
		else
		{
			if instance_number(died_scene) > 0
			{
			var depth_ = died_scene.depth
			}
			else
			{
			var depth_ = 0
			}
		}
		
	var random_dir = choose(-1,1)
	var _depth = depth_-choose(-1,1)
	
		repeat(irandom_range(7,9))
		{
			if (instance_number(died_scene) > 0) && abs(x - died_scene.x) < 192
			{
			var _ef = instance_create_depth(x,died_scene.y+random_distance_check,_depth,effect_spark_rain)
			_ef.hspeed = irandom_range(5,20)*random_dir/10
			_ef.vspeed = irandom_range(-40,-10)/90
			}
			else
			{
			var _ef = instance_create_depth(x,global.p_floor+27,_depth,effect_spark_rain)
			_ef.hspeed = irandom_range(5,20)*random_dir/10
			_ef.vspeed = irandom_range(-40,-10)/90
			}
		}
	}
}
}