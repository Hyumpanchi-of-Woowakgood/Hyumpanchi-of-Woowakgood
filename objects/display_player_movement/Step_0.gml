/// @description Insert description here
// You can write your code in this editor
depth = player.depth-2

if floor(player.y) != d_y[point_number]
{
	if dilay = 0
	{
	point_number ++
	d_x[point_number] = floor(player.x)
	d_y[point_number] = floor(player.y)
	}
dilay ++

	if dilay > 2
	{
	dilay = 0
	}
}


if floor(player.x) != d_x[point_number]
{
	if dilay = 0
	{
	point_number ++
	d_x[point_number] = floor(player.x)
	d_y[point_number] = floor(player.y)
	}
dilay ++

	if dilay > 2
	{
	dilay = 0
	}
}

if point_number > 512
{
	for(var i = 0; i <= 512; i++)
	{
		if i = 0
		{
		d_x[i] = player.x
		d_y[i] = player.y
		}
		else
		{
		d_x[i] = -1
		d_y[i] = -1
		}
	}
point_number = 0
}