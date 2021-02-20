/// @description Insert description here
// You can write your code in this editor

if y > 366
{
gravity = 0
vspeed = 0
y = 366
}


if attack > 0
{
sprite_index = pl_move_skeleton_attack_1
attack += 0.32
	
	if attack > 2 && attack < 3
	{
	var effect_ = instance_create_depth(x,y,depth+1,effect_attack2119)
	effect_.image_xscale = image_xscale
	effect_.image_yscale = image_yscale
	attack = 3.1
	}
	
	if attack > 5
	{
	alarm[1] = 30
	image_index = 4
	attack = 0
	}
	else
	{
		if image_index < 5
		{
		image_index = attack
		}
	}
}
