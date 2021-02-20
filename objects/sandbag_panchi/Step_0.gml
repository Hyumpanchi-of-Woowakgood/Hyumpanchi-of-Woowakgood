/// @description Insert description here
// You can write your code in this editor
if y > 376
{
gravity = 0
vspeed = 0
y = 376
}



if place_meeting(x,y,effect_attack2119) && dilay = 0
{
saved_x = x
shake = 1
dilay = 1
alarm[1] = 15
x -= 2
	var _effect = instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),depth-1,ef_blood_2)
	_effect.image_xscale = -1
	_effect.sprite_index = blood_effect_white
	if global.blood_effect > 0
	{
	_effect.sprite_index = blood_effect
	}
}

if shake > 0
{
shake ++
	if shake = 3
	{
	x += 2
	}
	
	if shake = 6
	{
	x -= 2
	}
	
	if shake = 9
	{
	x += 2
	}
	
	if shake >= 12
	{
	shake = 0
	x = xstart
	}
}