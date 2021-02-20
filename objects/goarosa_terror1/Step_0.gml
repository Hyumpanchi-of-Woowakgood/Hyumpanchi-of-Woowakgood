/// @description Insert description here
// You can write your code in this editor
global.terror += 0.05
if global.t_shake_x < 1 && global.terror <= 1
{
view_shake(1,4,1)
}

if global.terror > 1.4
{
global.terror_zero = 1
instance_destroy(pianocat)
instance_destroy(wakgood_)
instance_destroy()
}

if global.terror = 1
{
	for(var i = -32; i < 32; i++)
	{
	instance_create_depth(1568+i*32,864,-1,effect)
	}
}