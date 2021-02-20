/// @description Insert description here
// You can write your code in this editor
if instance_number(game_start) = 0
{
time ++
}

if time > 400
{
a = 1
}

if image_index = 8 || image_index = 9
{
	if global.grabed = 0
	{
	instance_destroy()
	}
}