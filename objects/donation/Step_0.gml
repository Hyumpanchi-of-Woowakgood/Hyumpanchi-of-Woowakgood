/// @description Insert description here
// You can write your code in this editor
time ++
if time < 300
{
	if image_alpha < 1
	{
	image_alpha += 0.05
	}
}


if time > 400
{
image_alpha -= 0.05
	if image_alpha <= 0
	{
	instance_destroy()
	}
}

if global.playing_scene > 0 && instance_number(player) > 0
{
x = player.x
y = player.y
}