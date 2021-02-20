/// @description Insert description here
// You can write your code in this editor
if instance_number(player) > 0
{
depth = player.depth+1

	if set_player_x > 0
	{
	player.x += (x-100 - player.x)*0.1
	player.image_xscale = -abs(player.image_xscale)
	}
}
else
{
depth = daepiso.depth-10
}

image_index = hit_stand_up


if ice_hp <= 0
{
	if place_meeting(x,y+1,obj_floor) || place_meeting(x,y+vspeed,obj_floor)
	{
	gravity = 0
	vspeed = 0
	y = y+vspeed
		if hit_stand_up = 0
		{
		hit_stand_up = 1
		alarm[2] = 100
		}
	}
	else
	{
		if hit_stand_up != 1
		{
		hit_stand_up = 0
		}
	gravity = 0.2
	}
	
	repeat(100)
	{
		if place_meeting(x,y+0.2,obj_floor)
		{
		y -= 0.1
		}
		else
		{
		break;
		}
	}
}
else
{
	if place_meeting(x,y+19,obj_floor) || place_meeting(x,y+vspeed,obj_floor)
	{
	gravity = 0
	vspeed = 0
	y = y+vspeed
	}
	else
	{
	gravity = 0.2
	}
	
	repeat(100)
	{
		if place_meeting(x,y+0.2+18,obj_floor)
		{
		y -= 0.1
		}
		else
		{
		break;
		}
	}
}

if dilay > 0
{
	if dilay = 10
	{
	x = xstart+2
	}
	
	if dilay = 8
	{
	x = xstart-2
	}
	
	if dilay = 6
	{
	x = xstart+2
	}
	
	if dilay = 4
	{
	x = xstart-2
	}
	
	if dilay = 2
	{
	x = xstart+2
	}
dilay --
}
else
{
x = xstart
}